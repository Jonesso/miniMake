.PHONY = clean all
pottery:
	@echo pottery
	@dir>pottery
irrigation: pottery
	@echo irrigation
	@dir>irrigation
writing: pottery
	@echo writing
	@dir>writing
animal_husbandry:
	@echo animal_husbandry
	@dir>animal_husbandry
archery: animal_husbandry
	@echo archery
	@dir>archery
mining:
	@echo mining
	@dir>mining
masonry: mining
	@echo masonry
	@dir>masonry
bronze_working: mining
	@echo bronze_working
	@dir>bronze_working
the_wheel: mining
	@echo the_wheel
	@dir>the_wheel
apprenticeship: mining currency horseback_riding
	@echo apprenticeship
	@dir>apprenticeship
sailing:
	@echo sailing
	@dir>sailing
celestial_navigation: sailing astrology
	@echo celestial_navigation
	@dir>celestial_navigation
shipbuilding: sailing
	@echo shipbuilding
	@dir>shipbuilding
astrology:
	@echo astrology
	@dir>astrology
drama_poetry: astrology irrigation masonry early_empire mysticism
	@echo drama_poetry
	@dir>drama_poetry
theology: astrology mysticism drama_poetry
	@echo theology
	@dir>theology
horseback_riding: archery
	@echo horseback_riding
	@dir>horseback_riding
machinery: archery iron_working engineering
	@echo machinery
	@dir>machinery
currency: writing foreign_trade
	@echo currency
	@dir>currency
state_workforce: writing bronze_working craftsmanship
	@echo state_workforce
	@dir>state_workforce
recorded_history: writing political_philosophy drama_poetry
	@echo recorded_history
	@dir>recorded_history
construction: masonry the_wheel horseback_riding
	@echo construction
	@dir>construction
engineering: masonry the_wheel
	@echo engineering
	@dir>engineering
iron_working: bronze_working
	@echo iron_working
	@dir>iron_working
mathematics: bronze_working celestial_navigation currency drama_poetry
	@echo mathematics
	@dir>mathematics
military_training: bronze_working military_tradition games_recreation
	@echo military_training
	@dir>military_training
cartography: celestial_navigation shipbuilding
	@echo cartography
	@dir>cartography
medieval_faires: currency feudalism
	@echo medieval_faires
	@dir>medieval_faires
guilds: currency feudalism civil_service
	@echo guilds
	@dir>guilds
mercantilism: currency humanism
	@echo mercantilism
	@dir>mercantilism
stirrups: horseback_riding feudalism
	@echo stirrups
	@dir>stirrups
mass_production: shipbuilding machinery education
	@echo mass_production
	@dir>mass_production
naval_tradition: shipbuilding defensive_tactics
	@echo naval_tradition
	@dir>naval_tradition
military_tactics: mathematics
	@echo military_tactics
	@dir>military_tactics
education: mathematics apprenticeship
	@echo education
	@dir>education
military_engineering: construction engineering
	@echo military_engineering
	@dir>military_engineering
castles: construction divine_right exploration
	@echo castles
	@dir>castles
games_recreation: construction state_workforce
	@echo games_recreation
	@dir>games_recreation
gunpowder: apprenticeship stirrups military_engineering
	@echo gunpowder
	@dir>gunpowder
printing: machinery education
	@echo printing
	@dir>printing
metal_casting: machinery gunpowder
	@echo metal_casting
	@dir>metal_casting
banking: education stirrups guilds
	@echo banking
	@dir>banking
astronomy: education
	@echo astronomy
	@dir>astronomy
military_science: stirrups printing siege_tactics
	@echo military_science
	@dir>military_science
siege_tactics: castles metal_casting
	@echo siege_tactics
	@dir>siege_tactics
square_rigging: cartography gunpowder
	@echo square_rigging
	@dir>square_rigging
exploration: cartography mercenaries medieval_faires
	@echo exploration
	@dir>exploration
industrialization: mass_production square_rigging
	@echo industrialization
	@dir>industrialization
scientific_theory: banking astronomy the_enlightenment
	@echo scientific_theory
	@dir>scientific_theory
colonialism: astronomy mercantilism
	@echo colonialism
	@dir>colonialism
ballistics: metal_casting siege_tactics
	@echo ballistics
	@dir>ballistics
economics: metal_casting scientific_theory
	@echo economics
	@dir>economics
scorched_earth: metal_casting nationalism
	@echo scorched_earth
	@dir>scorched_earth
steam_power: industrialization
	@echo steam_power
	@dir>steam_power
flight: industrialization scientific_theory economics
	@echo flight
	@dir>flight
steel: industrialization rifling
	@echo steel
	@dir>steel
class_struggle: industrialization ideology
	@echo class_struggle
	@dir>class_struggle
sanitation: scientific_theory urbanization
	@echo sanitation
	@dir>sanitation
rifling: ballistics military_science
	@echo rifling
	@dir>rifling
totalitarianism: military_science ideology
	@echo totalitarianism
	@dir>totalitarianism
electricity: steam_power mercantilism
	@echo electricity
	@dir>electricity
radio: steam_power flight conservation
	@echo radio
	@dir>radio
chemistry: sanitation
	@echo chemistry
	@dir>chemistry
suffrage: sanitation ideology
	@echo suffrage
	@dir>suffrage
replaceable_parts: economics
	@echo replaceable_parts
	@dir>replaceable_parts
capitalism: economics mass_media
	@echo capitalism
	@dir>capitalism
combined_arms: flight combustion
	@echo combined_arms
	@dir>combined_arms
synthetic_materials: flight plastics
	@echo synthetic_materials
	@dir>synthetic_materials
rapid_deployment: flight cold_war
	@echo rapid_deployment
	@dir>rapid_deployment
advanced_ballistics: replaceable_parts steel electricity
	@echo advanced_ballistics
	@dir>advanced_ballistics
combustion: steel natural_history
	@echo combustion
	@dir>combustion
computers: electricity radio suffrage totalitarianism class_struggle
	@echo computers
	@dir>computers
advanced_flight: radio
	@echo advanced_flight
	@dir>advanced_flight
rocketry: radio chemistry
	@echo rocketry
	@dir>rocketry
nanotechnology: radio composites
	@echo nanotechnology
	@dir>nanotechnology
mass_media: radio urbanization
	@echo mass_media
	@dir>mass_media
nuclear_program: chemistry ideology
	@echo nuclear_program
	@dir>nuclear_program
plastics: combustion
	@echo plastics
	@dir>plastics
satellites: advanced_flight rocketry
	@echo satellites
	@dir>satellites
globalization: advanced_flight rapid_deployment space_race
	@echo globalization
	@dir>globalization
guidance_systems: rocketry advanced_ballistics
	@echo guidance_systems
	@dir>guidance_systems
space_race: rocketry cold_war
	@echo space_race
	@dir>space_race
nuclear_fission: advanced_ballistics combined_arms
	@echo nuclear_fission
	@dir>nuclear_fission
telecommunications: computers
	@echo telecommunications
	@dir>telecommunications
robotics: computers globalization
	@echo robotics
	@dir>robotics
lasers: nuclear_fission
	@echo lasers
	@dir>lasers
cold_war: nuclear_fission ideology
	@echo cold_war
	@dir>cold_war
composites: synthetic_materials
	@echo composites
	@dir>composites
stealth_technology: synthetic_materials
	@echo stealth_technology
	@dir>stealth_technology
social_media: telecommunications professional_sports space_race
	@echo social_media
	@dir>social_media
nuclear_fusion: lasers
	@echo nuclear_fusion
	@dir>nuclear_fusion
code_of_laws:
	@echo code_of_laws
	@dir>code_of_laws
craftsmanship: code_of_laws
	@echo craftsmanship
	@dir>craftsmanship
foreign_trade: code_of_laws
	@echo foreign_trade
	@dir>foreign_trade
military_tradition: craftsmanship
	@echo military_tradition
	@dir>military_tradition
early_empire: foreign_trade
	@echo early_empire
	@dir>early_empire
mysticism: foreign_trade
	@echo mysticism
	@dir>mysticism
political_philosophy: state_workforce early_empire
	@echo political_philosophy
	@dir>political_philosophy
defensive_tactics: games_recreation political_philosophy
	@echo defensive_tactics
	@dir>defensive_tactics
humanism: drama_poetry medieval_faires
	@echo humanism
	@dir>humanism
mercenaries: military_training feudalism
	@echo mercenaries
	@dir>mercenaries
feudalism: defensive_tactics
	@echo feudalism
	@dir>feudalism
civil_service: defensive_tactics recorded_history
	@echo civil_service
	@dir>civil_service
divine_right: theology civil_service
	@echo divine_right
	@dir>divine_right
diplomatic_service: guilds
	@echo diplomatic_service
	@dir>diplomatic_service
reformed_church: guilds divine_right
	@echo reformed_church
	@dir>reformed_church
the_enlightenment: humanism diplomatic_service
	@echo the_enlightenment
	@dir>the_enlightenment
civil_engineering: mercantilism
	@echo civil_engineering
	@dir>civil_engineering
nationalism: the_enlightenment
	@echo nationalism
	@dir>nationalism
opera_ballet: the_enlightenment
	@echo opera_ballet
	@dir>opera_ballet
natural_history: colonialism
	@echo natural_history
	@dir>natural_history
urbanization: civil_engineering nationalism
	@echo urbanization
	@dir>urbanization
conservation: natural_history urbanization
	@echo conservation
	@dir>conservation
mobilization: urbanization
	@echo mobilization
	@dir>mobilization
cultural_heritage: conservation
	@echo cultural_heritage
	@dir>cultural_heritage
ideology: mass_media mobilization
	@echo ideology
	@dir>ideology
professional_sports: ideology
	@echo professional_sports
	@dir>professional_sports
clean:
	@del pottery irrigation writing animal_husbandry archery mining masonry bronze_working the_wheel apprenticeship sailing celestial_navigation shipbuilding astrology drama_poetry theology horseback_riding machinery currency state_workforce recorded_history construction engineering iron_working mathematics military_training cartography medieval_faires guilds mercantilism stirrups mass_production naval_tradition military_tactics education military_engineering castles games_recreation gunpowder printing metal_casting banking astronomy military_science siege_tactics square_rigging exploration industrialization scientific_theory colonialism ballistics economics scorched_earth steam_power flight steel class_struggle sanitation rifling totalitarianism electricity radio chemistry suffrage replaceable_parts capitalism combined_arms synthetic_materials rapid_deployment advanced_ballistics combustion computers advanced_flight rocketry nanotechnology mass_media nuclear_program plastics satellites globalization guidance_systems space_race nuclear_fission telecommunications robotics lasers cold_war composites stealth_technology social_media nuclear_fusion code_of_laws craftsmanship foreign_trade military_tradition early_empire mysticism political_philosophy defensive_tactics humanism mercenaries feudalism civil_service divine_right diplomatic_service reformed_church the_enlightenment civil_engineering nationalism opera_ballet natural_history urbanization conservation mobilization cultural_heritage ideology professional_sports
	@echo CLEANED