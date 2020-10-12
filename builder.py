import sys
import os
import shutil
import subprocess

dependencies = {}  # зависимости файлов
actions = {}
hash_table = {}


def parse_makefile():
    makefile = open('Makefile', 'r')
    for line in makefile:
        separator_pos = line.find(':')
        command_pos = line.find('@')
        if separator_pos != -1:
            curr_main_file = (line[0:separator_pos])  # файл, зависимости которого рассматриваются в цикле
            curr_dependencies = []
            curr_actions = []
            for dependency in line[separator_pos:-1].split(" "):
                curr_dependencies.append(dependency)
            curr_dependencies.pop(0)
            dependencies[curr_main_file] = curr_dependencies
        if command_pos != -1:
            curr_actions.append(line[command_pos:])
        else:
            actions[curr_main_file] = curr_actions


# функция проверки на цикличность графа
def is_cycled(element, graph_dependencies, action_path):
    color = {filename: "white" for filename in graph_dependencies}
    found_cycle = False
    if color[element] == "white":
        dfs_visit(graph_dependencies, element, color, found_cycle, action_path)
    return found_cycle


# функция создания последовательности работы файлов
def dfs_visit(graph_dependencies, filename, color, found_cycle, action_path):
    if found_cycle:
        return
    color[filename] = "gray"
    for dependency in graph_dependencies[filename]:
        if color[dependency] == "gray":
            return
        if color[dependency] == "white":
            dfs_visit(graph_dependencies, dependency, color, found_cycle, action_path)
    color[filename] = "black"
    action_path.append(filename)


# топологическая сортировка
def topological_sort(graph, start, action_path):
    action_path.clear()
    is_cycled(start, graph, action_path)


# функция реализации действий
def make_actions(action_path):
    path = os.getcwd() + "\\files"
    os.chdir(path)
    for element in action_path:
        if in_hash_table(element):
            print(element, "is up-to-date")
        else:
            for action in actions[element]:
                os.system(action)


# хеш функция для создания ключей
def hash_func(element):
    hash_str = ""
    for c in element:
        hash_str += ''.join(str(ord(c)))  # посимвольный перевод строки в ASCII
    return hash_str


# реализуем  хеш таблицу через словарь для контроля версий, ключи к которому будут генерироваться с помощью hash_func()
def in_hash_table(element):
    if hash_func(element) in hash_table.keys():
        return True
    else:
        hash_table[hash_func(element)] = element
        return False


# функция создания хеш таблицы для проверки
def make_hash_table():
    hash_table.clear()
    for file in os.listdir(os.getcwd() + '\\files'):
        hash_table[hash_func(file)] = file


# функция обработки запросов
def menu():
    parse_makefile()
    command = sys.argv

    if command[1] == "make" and command[2] == "all":
        files_order = []
        make_hash_table()
        for element in dependencies:
            if element not in dependencies:
                print("Key not found")
            else:
                topological_sort(dependencies, element, files_order)
        make_actions(files_order)
    elif command[1] == "make" and command[2] is not None:
        files_order = []
        make_hash_table()
        if command[2] not in dependencies:
            print("Key not found")
        else:
            topological_sort(dependencies, command[2], files_order)
            make_actions(files_order)
    elif command[1] == "clean" and command[2] == "all":
        shutil.rmtree(os.getcwd() + '\\files')
    elif command[1] == "clean" and command[2] is not None:
        try:
            os.remove(os.getcwd() + '\\files\\' + command[2])
        except FileNotFoundError:
            print("No such file: ", command[2])
    else:
        print("Unknown command")


if __name__ == "__main__":
    if "files" not in os.listdir():
        os.mkdir("files")
    menu()
