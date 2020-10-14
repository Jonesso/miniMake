import sys
import os
import hashlib
import json

dependencies = {}  # зависимости файлов
actions = {}  # действия (с файлами и для ложных целей)
hash_table = {}
phony_func_names = []


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
            if element not in phony_func_names:
                hash_table[element] = get_hash_of_file(element)


# контроль версий - совпадает ли хэш содержимого файла
def in_hash_table(file):
    return file in hash_table.keys() and get_hash_of_file(file) == hash_table[file]


def get_hash_of_file(f_path, mode='md5'):
    h = hashlib.new(mode)
    with open(f_path, 'rb') as file:
        data = file.read()
    h.update(data)
    digest = h.hexdigest()
    return digest


# создание json-файла, в котором будут храниться хэши файлов
def generate_json():
    with open("data_file.json", "w") as write_file:
        json.dump(hash_table, write_file)


# функция создания хеш таблицы для проверки
def make_hash_table():
    # hash_table.clear()
    for file in os.listdir(os.getcwd() + '\\files'):
        hash_table[file] = get_hash_of_file(os.getcwd() + '\\files\\' + file)


def parse_makefile():
    makefile = open('Makefile', 'r')
    for line in makefile:
        separator_pos = line.find(':')
        command_pos = line.find('@')
        phony_pos = line.find(".PHONY")
        if separator_pos != -1:
            curr_main_file = (line[0:separator_pos])  # файл, зависимости которого рассматриваются в цикле
            curr_actions = []
            if curr_main_file not in phony_func_names:
                curr_dependencies = []
                for dependency in line[separator_pos:-1].split(" "):  # не включать /n
                    curr_dependencies.append(dependency)
                curr_dependencies.pop(0)
                dependencies[curr_main_file] = curr_dependencies
        if command_pos != -1:
            curr_actions.append(line[command_pos:])
        if phony_pos != -1:
            for phony_func_name in line[line.find("=") + 1:-1].strip().split():
                phony_func_names.append(phony_func_name)
        else:
            actions[curr_main_file] = curr_actions


# функция обработки запросов
def mainloop():
    parse_makefile()
    command = sys.argv

    if command[1] == "make":
        files_order = []
        make_hash_table()
        if len(command) > 2 and command[2] is not None:
            if command[2] not in dependencies:
                print("Key not found")
            else:
                topological_sort(dependencies, command[2], files_order)
                make_actions(files_order)
        else:
            for element in dependencies:
                if element not in dependencies:
                    print("Key not found")
                else:
                    topological_sort(dependencies, element, files_order)
            make_actions(files_order)
        generate_json()
    elif command[1] in phony_func_names:
        make_actions([command[1]])
    else:
        print("Unknown command")


if __name__ == "__main__":
    if "files" not in os.listdir():
        os.mkdir("files")
    mainloop()
