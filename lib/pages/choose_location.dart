
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  List <WorldTime> locations = [
    WorldTime(zone: 'Africa/Abidjan', location: 'Abidjan', flag: 'cote-d-Ivoire.png'),
    WorldTime(zone: 'Africa/Accra', location: 'Accra', flag: 'ghana.png'),
    WorldTime(zone: 'Africa/Algiers', location: 'Algiers', flag: 'algeria.png'),
    WorldTime(zone: 'Africa/Bissau', location: 'Bissau', flag: 'guinea-bissau.png'),
    WorldTime(zone: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
    WorldTime(zone: 'Africa/Casablanca', location: 'Casablanca', flag: 'morocco.png'),
    WorldTime(zone: 'Africa/Ceuta', location: 'Ceuta', flag: 'morocco.png'),
    WorldTime(zone: 'Africa/El_Aaiun', location: 'El Aaiun', flag: 'morocco.png'),
    WorldTime(zone: 'Africa/Johannesburg', location: 'Johannesburg', flag: 'south-africa.png'),
    WorldTime(zone: 'Africa/Juba', location: 'Juba', flag: 'south-sudan.png'),
    WorldTime(zone: 'Africa/Khartoum', location: 'Khartoum', flag: 'sudan.png'),
    WorldTime(zone: 'Africa/Lagos', location: 'Lagos', flag: 'nigeria.png'),
    WorldTime(zone: 'Africa/Maputo', location: 'Maputo', flag: 'mozambique.png'),
    WorldTime(zone: 'Africa/Monrovia', location: 'Monrovia', flag: 'liberia.png'),
    WorldTime(zone: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
    WorldTime(zone: 'Africa/Ndjamena', location: 'Ndjamena', flag: 'chad.png'),
    WorldTime(zone: 'Africa/Sao_Tome', location: 'Sao Tome', flag: 'sao-tome-and-principe.png'),
    WorldTime(zone: 'Africa/Tripoli', location: 'Tripoli', flag: 'libya.png'),
    WorldTime(zone: 'Africa/Tunis', location: 'Tunis', flag: 'tunisia.png'),
    WorldTime(zone: 'Africa/Windhoek', location: 'Windhoek', flag: 'namibia.png'),
    WorldTime(zone: 'America/Adak', location: 'Adak', flag: 'usa.png'),
    WorldTime(zone: 'America/Anchorage', location: 'Anchorage', flag: 'usa.png'),
    WorldTime(zone: 'America/Araguaina', location: 'Araguaina', flag: 'usa.png'),
    WorldTime(zone: 'America/Argentina/Buenos_Aires', location: 'Buenos Aires', flag: 'argentina.png'),
    WorldTime(zone: 'America/Argentina/Catamarca', location: 'Catamarca', flag: 'argentina.png'),
    WorldTime(zone: 'America/Argentina/Cordoba', location: 'Cordoba', flag: 'argentina.png'),
    WorldTime(zone: 'America/Argentina/Jujuy', location: 'Jujuy', flag: 'argentina.png'),
    WorldTime(zone: 'America/Argentina/La_Rioja', location: 'La Rioja', flag: 'argentina.png'),
    WorldTime(zone: 'America/Argentina/Mendoza', location: 'Mendoza', flag: 'argentina.png'),
    WorldTime(zone: 'America/Argentina/Rio_Gallegos', location: 'Rio Gallegos', flag: 'argentina.png'),
    WorldTime(zone: 'America/Argentina/Salta', location: 'Salta', flag: 'argentina.png'),
    WorldTime(zone: 'America/Argentina/San_Juan', location: 'San Juan', flag: 'argentina.png'),
    WorldTime(zone: 'America/Argentina/San_Luis', location: 'San Luis', flag: 'argentina.png'),
    WorldTime(zone: 'America/Argentina/Tucuman', location: 'Tucuman', flag: 'argentina.png'),
    WorldTime(zone: 'America/Argentina/Ushuaia', location: 'Ushuaia', flag: 'argentina.png'),
    WorldTime(zone: 'America/Asuncion', location: 'Asuncion', flag: 'paraguay.png'),
    WorldTime(zone: 'America/Atikokan', location: 'Atikokan', flag: 'canada.png'),
    WorldTime(zone: 'America/Bahia', location: 'Bahia', flag: 'brazil.png'),
    WorldTime(zone: 'America/Bahia_Banderas', location: 'Bahia Banderas', flag: 'mexico.png'),
    WorldTime(zone: 'America/Barbados', location: 'Barbados', flag: 'barbados.png'),
    WorldTime(zone: 'America/Belem', location: 'Belem', flag: 'brazil.png'),
    WorldTime(zone: 'America/Belize', location: 'Belize', flag: 'belize.png'),
    WorldTime(zone: 'America/Blanc-Sablon', location: 'Blanc-Sablon', flag: 'canada.png'),
    WorldTime(zone: 'America/Boa_Vista', location: 'Boa Vista', flag: 'cape-verde.png'),
    WorldTime(zone: 'America/Bogota', location: 'Bogota', flag: 'colombia.png'),
    WorldTime(zone: 'America/Cambridge_Bay', location: 'Cambridge Bay', flag: 'canada.png'),
    WorldTime(zone: 'America/Campo_Grande', location: 'Campo Grande', flag: 'brazil.png'),
    WorldTime(zone: 'America/Cancun', location: 'Cancun', flag: 'mexico.png'),
    WorldTime(zone: 'America/Caracas', location: 'Caracas', flag: 'venezuela.png'),
    WorldTime(zone: 'America/Cayenne', location: 'Cayenne', flag: 'france.png'),
    WorldTime(zone: 'America/Chicago', location: 'Chicago', flag: 'usa.png'),
    WorldTime(zone: 'America/Chihuahua', location: 'Chihuahua', flag: 'mexico.png'),
    WorldTime(zone: 'America/Costa_Rica', location: 'Costa Rica', flag: 'costa-rica.png'),
    WorldTime(zone: 'America/Creston', location: 'Creston', flag: 'canada.png'),
    WorldTime(zone: 'America/Cuiaba', location: 'Cuiaba', flag: 'brazil.png'),
    WorldTime(zone: 'America/Curacao', location: 'Curacao', flag: 'netherlands.png'),
    WorldTime(zone: 'America/Danmarkshavn', location: 'Danmarkshavn', flag: 'denmark.png'),
    WorldTime(zone: 'America/Dawson', location: 'Dawson', flag: 'canada.png'),
    WorldTime(zone: 'America/Dawson_Creek', location: 'Dawson Creek', flag: 'canada.png'),
    WorldTime(zone: 'America/Denver', location: 'Denver', flag: 'usa.png'),
    WorldTime(zone: 'America/Detroit', location: 'Detroit', flag: 'usa.png'),
    WorldTime(zone: 'America/Edmonton', location: 'Edmonton', flag: 'canada.png'),
    WorldTime(zone: 'America/Eirunepe', location: 'Eirunepe', flag: 'brazil.png'),
    WorldTime(zone: 'America/El_Salvador', location: 'El Salvador', flag: 'El-salvador.png'),
    WorldTime(zone: 'America/Fort_Nelson', location: 'Fort Nelson', flag: 'canada.png'),
    WorldTime(zone: 'America/Fortaleza', location: 'Fortaleza', flag: 'brazil.png'),
    WorldTime(zone: 'America/Glace_Bay', location: 'Glace Bay', flag: 'canada.png'),
    WorldTime(zone: 'America/Goose_Bay', location: 'Goose Bay', flag: 'canada.png'),
    WorldTime(zone: 'America/Grand_Turk', location: 'Grand Turk', flag: 'usa.png'),
    WorldTime(zone: 'America/Guatemala', location: 'Guatemala', flag: 'guatemala.png'),
    WorldTime(zone: 'America/Guayaquil', location: 'Guayaquil', flag: 'ecuardo.png'),
    WorldTime(zone: 'America/Guyana', location: 'Guyana', flag: 'guyana.png'),
    WorldTime(zone: 'America/Halifax', location: 'Halifax', flag: 'canada.png'),
    WorldTime(zone: 'America/Havana', location: 'Havana', flag: 'cuba.png'),
    WorldTime(zone: 'America/Hermosillo', location: 'Hermosillo', flag: 'mexico.png'),
    WorldTime(zone: 'America/Indiana/Indianapolis', location: 'Indianapolis', flag: 'usa.png'),
    WorldTime(zone: 'America/Indiana/Knox', location: 'Knox', flag: 'usa.png'),
    WorldTime(zone: 'America/Indiana/Marengo', location: 'Marengo', flag: 'usa.png'),
    WorldTime(zone: 'America/Indiana/Petersburg', location: 'Petersburg', flag: 'usa.png'),
    WorldTime(zone: 'America/Indiana/Tell_City', location: 'Tell City', flag: 'usa.png'),
    WorldTime(zone: 'America/Indiana/Vevay', location: 'Vevay', flag: 'usa.png'),
    WorldTime(zone: 'America/Indiana/Vincennes', location: 'Vincennes', flag: 'usa.png'),
    WorldTime(zone: 'America/ndiana/Winamac', location: 'Winamac', flag: 'usa.png'),
    WorldTime(zone: 'America/Inuvik', location: 'Inuvik', flag: 'canada.png'),
    WorldTime(zone: 'America/Iqaluit', location: 'Iqaluit', flag: 'canada.png'),
    WorldTime(zone: 'America/Jamaica', location: 'Jamaica', flag: 'jamaica.png'),
    WorldTime(zone: 'America/Juneau', location: 'Juneau', flag: 'usa.png'),
    WorldTime(zone: 'America/Kentucky/Louisville', location: 'Louisville', flag: 'usa.png'),
    WorldTime(zone: 'America/Kentucky/Monticello', location: 'Monticello', flag: 'usa.png'),
    WorldTime(zone: 'America/La_Paz', location: 'La Paz', flag: 'bolivia.png'),
    WorldTime(zone: 'America/Lima', location: 'Lima', flag: 'peru.png'),
    WorldTime(zone: 'America/Los_Angeles', location: 'Los Angeles', flag: 'usa.png'),
    WorldTime(zone: 'America/Maceio', location: 'Maceio', flag: 'brazil.png'),
    WorldTime(zone: 'America/Managua', location: 'Managua', flag: 'usa.png'),
    WorldTime(zone: 'America/Manaus', location: 'Manaus', flag: 'brazil.png'),
    WorldTime(zone: 'America/Martinique', location: 'Martinique', flag: 'france.png'),
    WorldTime(zone: 'America/Matamoros', location: 'Matamoros', flag: 'mexico.png'),
    WorldTime(zone: 'America/Mazatlan', location: 'Mazatlan', flag: 'mexico.png'),
    WorldTime(zone: 'America/Menominee', location: 'Menominee', flag: 'usa.png'),
    WorldTime(zone: 'America/Merida', location: 'Merida', flag: 'mexico.png'),
    WorldTime(zone: 'America/Metlakatla', location: 'Metlakatla', flag: 'usa.png'),
    WorldTime(zone: 'America/Mexico_City', location: 'Mexico City', flag: 'mexico.png'),
    WorldTime(zone: 'America/Miquelon', location: 'Miquelon', flag: 'france.png'),
    WorldTime(zone: 'America/Moncton', location: 'Moncton', flag: 'canada.png'),
    WorldTime(zone: 'America/Monterrey', location: 'Monterrey', flag: 'mexico.png'),
    WorldTime(zone: 'America/Montevideo', location: 'Montevideo', flag: 'uruguay.png'),
    WorldTime(zone: 'America/Nassau', location: 'Nassau', flag: 'bahamas.png'),
    WorldTime(zone: 'America/New_York', location: 'New York', flag: 'usa.png'),
    WorldTime(zone: 'America/Nipigon', location: 'Nipigon', flag: 'canada.png'),
    WorldTime(zone: 'America/Nome', location: 'Nome', flag: 'usa.png'),
    WorldTime(zone: 'America/Noronha', location: 'Noronha', flag: 'brazil.png'),
    WorldTime(zone: 'America/North_Dakota/Beulah', location: 'Beulah', flag: 'usa.png'),
    WorldTime(zone: 'America/North_Dakota/Center', location: 'Center', flag: 'usa.png'),
    WorldTime(zone: 'America/North_Dakota/New_Salem', location: 'New Salem', flag: 'usa.png'),
    WorldTime(zone: 'America/Nuuk', location: 'Nuuk', flag: 'denmark.png'),
    WorldTime(zone: 'America/Ojinaga', location: 'Ojinaga', flag: 'mexico.png'),
    WorldTime(zone: 'America/Panama', location: 'Panama', flag: 'panama.png'),
    WorldTime(zone: 'America/Pangnirtung', location: 'Pangnirtung', flag: 'canada.png'),
    WorldTime(zone: 'America/Paramaribo', location: 'Paramaribo', flag: 'suriname.png'),
    WorldTime(zone: 'America/Phoenix', location: 'Phoenix', flag: 'usa.png'),
    WorldTime(zone: 'America/Port-au-Prince', location: 'Port-au-Prince', flag: 'haiti.png'),
    WorldTime(zone: 'America/Port_of_Spain', location: 'Port of Spain', flag: 'trinidad-and-tobago.png'),
    WorldTime(zone: 'America/Porto_Velho', location: 'Porto Velho', flag: 'brazil.png'),
    WorldTime(zone: 'America/Puerto_Rico', location: 'Puerto Rico', flag: 'usa.png'),
    WorldTime(zone: 'America/Punta_Arenas', location: 'Punta Arenas', flag: 'chile.png'),
    WorldTime(zone: 'America/Rainy_River', location: 'Rainy River', flag: 'canada.png'),
    WorldTime(zone: 'America/Rankin_Inlet', location: 'Rankin Inlet', flag: 'canada.png'),
    WorldTime(zone: 'America/Recife', location: 'Recife', flag: 'brazil.png'),
    WorldTime(zone: 'America/Regina', location: 'Regina', flag: 'canada.png'),
    WorldTime(zone: 'America/Resolute', location: 'Resolute', flag: 'canada.png'),
    WorldTime(zone: 'America/Rio_Branco', location: 'Rio Branco', flag: 'brazil.png'),
    WorldTime(zone: 'America/Santarem', location: 'Santarem', flag: 'portugal.png'),
    WorldTime(zone: 'America/Santiago', location: 'Santiago', flag: 'chile.png'),
    WorldTime(zone: 'America/Santo_Domingo', location: 'Santo Domingo', flag: 'dominican-republic.png'),
    WorldTime(zone: 'America/Sao_Paulo', location: 'Sao Paulo', flag: 'brazil.png'),
    WorldTime(zone: 'America/Scoresbysund', location: 'Scoresbysund', flag: 'denmark.png'),
    WorldTime(zone: 'America/Sitka', location: 'Sitka', flag: 'usa.png'),
    WorldTime(zone: 'America/St_Johns', location: 'St Johns', flag: 'canada.png'),
    WorldTime(zone: 'America/Swift_Current', location: 'Swift Current', flag: 'canada.png'),
    WorldTime(zone: 'America/Tegucigalpa', location: 'Tegucigalpa', flag: 'honduras.png'),
    WorldTime(zone: 'America/Thule', location: 'Thule', flag: 'sweden.png'),
    WorldTime(zone: 'America/Thunder_Bay', location: 'Thunder Bay', flag: 'canada.png'),
    WorldTime(zone: 'America/Tijuana', location: 'Tijuana', flag: 'mexico.png'),
    WorldTime(zone: 'America/Toronto', location: 'Toronto', flag: 'canada.png'),
    WorldTime(zone: 'America/Vancouver', location: 'Vancouver', flag: 'canada.png'),
    WorldTime(zone: 'America/Whitehorse', location: 'Whitehorse', flag: 'canada.png'),
    WorldTime(zone: 'America/Winnipeg', location: 'Winnipeg', flag: 'canada.png'),
    WorldTime(zone: 'America/Yakutat', location: 'Yakutat', flag: 'usa.png'),
    WorldTime(zone: 'America/Yellowknife', location: 'Yellowknife', flag: 'canada.png'),
    WorldTime(zone: 'Antarctica/Casey', location: 'Casey', flag: 'australia.png'),
    WorldTime(zone: 'Antarctica/Davis', location: 'Davis', flag: 'usa.png'),
    WorldTime(zone: 'Antarctica/DumontDUrville', location: 'DumontDUrville', flag: 'france.png'),
    WorldTime(zone: 'Antarctica/Macquarie', location: 'Macquarie', flag: 'australia.png'),
    WorldTime(zone: 'Antarctica/Mawson', location: 'Mawson', flag: 'australia.png'),
    WorldTime(zone: 'Antarctica/Palmer', location: 'Palmer', flag: 'usa.png'),
    WorldTime(zone: 'Antarctica/Rothera', location: 'Rothera', flag: 'uk.png'),
    WorldTime(zone: 'Antarctica/Syowa', location: 'Syowa', flag: 'usa.png'),
    WorldTime(zone: 'Antarctica/Troll', location: 'Troll', flag: 'usa.png'),
    WorldTime(zone: 'Antarctica/Vostok', location: 'russia', flag: 'usa.png'),
    WorldTime(zone: 'Asia/Seoul', location: 'Seoul', flag: 'korea-south.png'),
    WorldTime(zone: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'),
    WorldTime(zone: 'Asia/Almaty', location: 'Almaty', flag: 'kazakhstan.png'),
    WorldTime(zone: 'Asia/Amman', location: 'Amman', flag: 'jordan.png'),
    WorldTime(zone: 'Asia/Anadyr', location: 'Anadyr', flag: 'russia.png'),
    WorldTime(zone: 'Asia/Aqtau', location: 'Aqtau', flag: 'kazakhstan.png'),
    WorldTime(zone: 'Asia/Aqtobe', location: 'Aqtobe', flag: 'kazakhstan.png'),
    WorldTime(zone: 'Asia/Ashgabat', location: 'Ashgabat', flag: 'turkmenistan.png'),
    WorldTime(zone: 'Asia/Atyrau', location: 'Atyrau', flag: 'kazakhstan.png'),
    WorldTime(zone: 'Asia/Baghdad', location: 'Baghdad', flag: 'iraq.png'),
    WorldTime(zone: 'Asia/Baku', location: 'Baku', flag: 'azerbaijan.png'),
    WorldTime(zone: 'Asia/Bangkok', location: 'Bangkok', flag: 'thailand.png'),
    WorldTime(zone: 'Asia/Barnaul', location: 'Barnaul', flag: 'russia.png'),
    WorldTime(zone: 'Asia/Beirut', location: 'Beirut', flag: 'lebanon.png'),
    WorldTime(zone: 'Asia/Bishkek', location: 'Bishkek', flag: 'kyrgyzstan.png'),
    WorldTime(zone: 'Asia/Brunei', location: 'Brunei', flag: 'brunei.png'),
    WorldTime(zone: 'Asia/Chita', location: 'Chita', flag: 'russia.png'),
    WorldTime(zone: 'Asia/Choibalsan', location: 'Choibalsan', flag: 'mongolia.png'),
    WorldTime(zone: 'Asia/Damascus', location: 'Damascus', flag: 'syria.png'),
    WorldTime(zone: 'Asia/Dhaka', location: 'Dhaka', flag: 'bangladesh.png'),
    WorldTime(zone: 'Asia/Dili', location: 'Dili', flag: 'timor-leste.png'),
    WorldTime(zone: 'Asia/Dubai', location: 'Dubai', flag: 'united-arab-emirates.png'),
    WorldTime(zone: 'Asia/Dushanbe', location: 'Dushanbe', flag: 'tajikistan.png'),
    WorldTime(zone: 'Asia/Famagusta', location: 'Famagusta', flag: 'indonesia.png'),
    WorldTime(zone: 'Asia/Gaza', location: 'Gaza', flag: 'palestine.png'),
    WorldTime(zone: 'Asia/Hebron', location: 'Hebron', flag: 'palestine.png'),
    WorldTime(zone: 'Asia/Ho_Chi_Minh', location: 'Ho Chi Minh', flag: 'vietnam.png'),
    WorldTime(zone: 'Asia/Hong_Kong', location: 'Hong Kong', flag: 'china.png'),
    WorldTime(zone: 'Asia/Hovd', location: 'Hovd', flag: 'mongolia.png'),
    WorldTime(zone: 'Asia/Irkutsk', location: 'Irkutsk', flag: 'russia.png'),
    WorldTime(zone: 'Asia/Jayapura', location: 'Jayapura', flag: 'indonesia.png'),
    WorldTime(zone: 'Asia/Jerusalem', location: 'Jerusalem', flag: 'israel.png'),
    WorldTime(zone: 'Asia/Kabul', location: 'Kabul', flag: 'afghanistan.png'),
    WorldTime(zone: 'Asia/Kamchatka', location: 'Kamchatka', flag: 'russia.png'),
    WorldTime(zone: 'Asia/Karachi', location: 'Karachi', flag: 'pakistan.png'),
    WorldTime(zone: 'Asia/Kathmandu', location: 'Kathmandu', flag: 'nepal.png'),
    WorldTime(zone: 'Asia/Khandyga', location: 'Khandyga', flag: 'russia.png'),
    WorldTime(zone: 'Asia/Kolkata', location: 'Kolkata', flag: 'india.png'),
    WorldTime(zone: 'Asia/Krasnoyarsk', location: 'Krasnoyarsk', flag: 'siberia.png'),
    WorldTime(zone: 'Asia/Kuala_Lumpur', location: 'Kuala Lumpur', flag: 'malaysia.png'),
    WorldTime(zone: 'Asia/Kuching', location: 'Kuching', flag: 'malaysia.png'),
    WorldTime(zone: 'Asia/Macau', location: 'Macau', flag: 'china.png'),
    WorldTime(zone: 'Asia/Magadan', location: 'Magadan', flag: 'russia.png'),
    WorldTime(zone: 'Asia/Makassar', location: 'Makassar', flag: 'indonesia.png'),
    WorldTime(zone: 'Asia/Manila', location: 'Manila', flag: 'malaysia.png'),
    WorldTime(zone: 'Asia/Nicosia', location: 'Nicosia', flag: 'cyprus.png'),
    WorldTime(zone: 'Asia/Novokuznetsk', location: 'Novokuznetsk', flag: 'siberia.png'),
    WorldTime(zone: 'Asia/Novosibirsk', location: 'Novosibirsk', flag: 'russia.png'),
    WorldTime(zone: 'Asia/Omsk', location: 'Omsk', flag: 'russia.png'),
    WorldTime(zone: 'Asia/Oral', location: 'Oral', flag: 'kazakhstan.png'),
    WorldTime(zone: 'Asia/Pontianak', location: 'Pontianak', flag: 'indonesia.png'),
    WorldTime(zone: 'Asia/Pyongyang', location: 'Pyongyang', flag: 'korea-north.png'),
    WorldTime(zone: 'Asia/Qatar', location: 'Qatar', flag: 'qatar.png'),
    WorldTime(zone: 'Asia/Qostanay', location: 'Qostanay', flag: 'kazakhstan.png'),
    WorldTime(zone: 'Asia/Qyzylorda', location: 'Qyzylorda', flag: 'kazakhstan.png'),
    WorldTime(zone: 'Asia/Riyadh', location: 'Riyadh', flag: 'saudi-arabia.png'),
    WorldTime(zone: 'Asia/Sakhalin', location: 'Sakhalin', flag: 'russia.png'),
    WorldTime(zone: 'Asia/Samarkand', location: 'Samarkand', flag: 'uzbekistan.png'),
    WorldTime(zone: 'Asia/Shanghai', location: 'Shanghai', flag: 'china.png'),
    WorldTime(zone: 'Asia/Singapore', location: 'Singapore', flag: 'singapore.png'),
    WorldTime(zone: 'Asia/Srednekolymsk', location: 'Srednekolymsk', flag: 'russia.png'),
    WorldTime(zone: 'Asia/Taipei', location: 'Taipei', flag: 'china.png'),
    WorldTime(zone: 'Asia/Tashkent', location: 'Tashkent', flag: 'uzbekistan.png'),
    WorldTime(zone: 'Asia/Tbilisi', location: 'Tbilisi', flag: 'georgia.png'),
    WorldTime(zone: 'Asia/Tehran', location: 'Tehran', flag: 'iran.png'),
    WorldTime(zone: 'Asia/Thimphu', location: 'Thimphu', flag: 'bhutan.png'),
    WorldTime(zone: 'Asia/Tokyo', location: 'Tokyo', flag: 'japan.png'),
    WorldTime(zone: 'Asia/Tomsk', location: 'Tomsk', flag: 'russia.png'),
    WorldTime(zone: 'Asia/Ulaanbaatar', location: 'Ulaanbaatar', flag: 'mongolia.png'),
    WorldTime(zone: 'Asia/Urumqi', location: 'Urumqi', flag: 'china.png'),
    WorldTime(zone: 'Asia/Ust-Nera', location: 'Ust-Nera', flag: 'russia.png'),
    WorldTime(zone: 'Asia/Vladivostok', location: 'Vladivostok', flag: 'russia.png'),
    WorldTime(zone: 'Asia/Yakutsk', location: 'Yakutsk', flag: 'indonesia.png'),
    WorldTime(zone: 'Asia/Yangon', location: 'Yekaterinburg', flag: 'indonesia.png'),
    WorldTime(zone: 'Asia/Yekaterinburg', location: 'Jakarta', flag: 'indonesia.png'),
    WorldTime(zone: 'Asia/Yerevan', location: 'Yerevan', flag: 'indonesia.png'),
    WorldTime(zone: 'Atlantic/Azores', location: 'Azores', flag: 'indonesia.png'),
    WorldTime(zone: 'Atlantic/Bermuda', location: 'Bermuda', flag: 'indonesia.png'),
    WorldTime(zone: 'Atlantic/Canary', location: 'Canary', flag: 'indonesia.png'),
    WorldTime(zone: 'Atlantic/Cape_Verde', location: 'Cape Verde', flag: 'indonesia.png'),
    WorldTime(zone: 'Atlantic/Faroe', location: 'Faroe', flag: 'indonesia.png'),
    WorldTime(zone: 'Atlantic/Madeira', location: 'Madeira', flag: 'indonesia.png'),
    WorldTime(zone: 'Atlantic/Reykjavik', location: 'Reykjavik', flag: 'indonesia.png'),
    WorldTime(zone: 'Atlantic/South_Georgia', location: 'South Georgia', flag: 'indonesia.png'),
    WorldTime(zone: 'Atlantic/Stanley', location: 'Stanley', flag: 'indonesia.png'),
    WorldTime(zone: 'Australia/Adelaide', location: 'Adelaide', flag: 'indonesia.png'),
    WorldTime(zone: 'Australia/Brisbane', location: 'Brisbane', flag: 'indonesia.png'),
    WorldTime(zone: 'Australia/Broken_Hill', location: 'Broken Hill', flag: 'indonesia.png'),
    WorldTime(zone: 'Australia/Darwin', location: 'Darwin', flag: 'indonesia.png'),
    WorldTime(zone: 'Australia/Eucla', location: 'Eucla', flag: 'indonesia.png'),
    WorldTime(zone: 'Australia/Hobart', location: 'Hobart', flag: 'indonesia.png'),
    WorldTime(zone: 'Australia/Lindeman', location: 'Lindeman', flag: 'indonesia.png'),
    WorldTime(zone: 'Australia/Lord_Howe', location: 'Lord Howe', flag: 'indonesia.png'),
    WorldTime(zone: 'Australia/Melbourne', location: 'Melbourne', flag: 'indonesia.png'),
    WorldTime(zone: 'Australia/Perth', location: 'Perth', flag: 'indonesia.png'),
    WorldTime(zone: 'Australia/Sydney', location: 'Sydney', flag: 'indonesia.png'),
    WorldTime(zone: 'Europe/Amsterdam', location: 'Amsterdam', flag: 'indonesia.png'),
    WorldTime(zone: 'Europe/Andorra', location: 'Andorra', flag: 'indonesia.png'),
    WorldTime(zone: 'Europe/Astrakhan', location: 'Astrakhan', flag: 'indonesia.png'),
    WorldTime(zone: 'Europe/Athens', location: 'Athens', flag: 'indonesia.png'),
    WorldTime(zone: 'Europe/Belgrade', location: 'Belgrade', flag: 'indonesia.png'),
    WorldTime(zone: 'Europe/Berlin', location: 'Athens', flag: 'greece.png'),
    WorldTime(zone: 'Europe/Brussels', location: 'Brussels', flag: 'indonesia.png'),
    WorldTime(zone: 'Europe/Bucharest', location: 'Bucharest', flag: 'indonesia.png'),
    WorldTime(zone: 'Europe/Budapest', location: 'Budapest', flag: 'indonesia.png'),
    WorldTime(zone: 'Europe/Chisinau', location: 'Chisinau', flag: 'indonesia.png'),
    WorldTime(zone: 'Europe/Copenhagen', location: 'Copenhagen', flag: 'indonesia.png'),
    WorldTime(zone: 'Europe/Dublin', location: 'Dublin', flag: 'indonesia.png'),
    WorldTime(zone: 'Europe/Gibraltar', location: 'Gibraltar', flag: 'indonesia.png'),
    WorldTime(zone: 'Europe/Helsinki', location: 'Helsinki', flag: 'indonesia.png'),
    WorldTime(zone: 'Europe/Istanbul', location: 'Istanbul', flag: 'indonesia.png'),
    WorldTime(zone: 'Europe/Kaliningrad', location: 'Kaliningrad', flag: 'indonesia.png'),
    WorldTime(zone: 'Europe/Kiev', location: 'Kiev', flag: 'indonesia.png'),
    WorldTime(zone: 'Europe/Kirov', location: 'Kirov', flag: 'indonesia.png'),
    WorldTime(zone: 'Europe/Lisbon', location: 'Lisbon', flag: 'indonesia.png'),
    WorldTime(zone: 'Europe/London', location: 'London', flag: 'uk.png'),
    WorldTime(zone: 'Europe/Luxembourg', location: 'Luxembourg', flag: 'indonesia.png'),
    WorldTime(zone: 'Europe/Madrid', location: 'Madrid', flag: 'indonesia.png'),
    WorldTime(zone: 'Europe/Malta', location: 'Malta', flag: 'indonesia.png'),
    WorldTime(zone: 'Europe/Minsk', location: 'Minsk', flag: 'indonesia.png'),
    WorldTime(zone: 'Europe/Monaco', location: 'Monaco', flag: 'indonesia.png'),
    WorldTime(zone: 'Europe/Moscow', location: 'Moscow', flag: 'indonesia.png'),
    WorldTime(zone: 'Europe/Oslo', location: 'Oslo', flag: 'indonesia.png'),
    WorldTime(zone: 'Europe/Paris', location: 'Paris', flag: 'indonesia.png'),
    WorldTime(zone: 'Europe/Prague', location: 'Prague', flag: 'indonesia.png'),
    WorldTime(zone: 'Europe/Riga', location: 'Riga', flag: 'indonesia.png'),
    WorldTime(zone: 'Europe/Riga', location: 'Riga', flag: 'indonesia.png'),
    WorldTime(zone: 'Europe/Rome', location: 'Rome', flag: 'indonesia.png'),
    WorldTime(zone: 'Europe/Samara', location: 'Samara', flag: 'indonesia.png'),
    WorldTime(zone: 'Europe/Saratov', location: 'Saratov', flag: 'indonesia.png'),
    WorldTime(zone: 'Europe/Simferopol', location: 'Simferopol', flag: 'indonesia.png'),
    WorldTime(zone: 'Europe/Sofia', location: 'Sofia', flag: 'indonesia.png'),
    WorldTime(zone: 'Europe/Stockholm', location: 'Stockholm', flag: 'indonesia.png'),
    WorldTime(zone: 'Europe/Tallinn', location: 'Tallinn', flag: 'indonesia.png'),
    WorldTime(zone: 'Europe/Tirane', location: 'Tirane', flag: 'indonesia.png'),
    WorldTime(zone: 'Europe/Ulyanovsk', location: 'Ulyanovsk', flag: 'indonesia.png'),
    WorldTime(zone: 'Europe/Uzhgorod', location: 'Uzhgorod', flag: 'indonesia.png'),
    WorldTime(zone: 'Europe/Vienna', location: 'Vienna', flag: 'indonesia.png'),
    WorldTime(zone: 'Europe/Vilnius', location: 'Vilnius', flag: 'indonesia.png'),
    WorldTime(zone: 'Europe/Volgograd', location: 'Volgograd', flag: 'indonesia.png'),
    WorldTime(zone: 'Europe/Warsaw', location: 'Warsaw', flag: 'indonesia.png'),
    WorldTime(zone: 'Europe/Zaporozhye', location: 'Zaporozhye', flag: 'indonesia.png'),
    WorldTime(zone: 'Europe/Zurich', location: 'Zurich', flag: 'indonesia.png'),
    WorldTime(zone: 'Indian/Chagos', location: 'Chagos', flag: 'indonesia.png'),
    WorldTime(zone: 'Indian/Cocos', location: 'Cocos', flag: 'indonesia.png'),
    WorldTime(zone: 'Indian/Kerguelen', location: 'Kerguelen', flag: 'indonesia.png'),
    WorldTime(zone: 'Indian/Maldives', location: 'Maldives', flag: 'indonesia.png'),
    WorldTime(zone: 'Indian/Mauritius', location: 'Mauritius', flag: 'indonesia.png'),
    WorldTime(zone: 'Indian/Reunion', location: 'Reunion', flag: 'indonesia.png'),
    WorldTime(zone: 'Pacific/Apia', location: 'Apia', flag: 'indonesia.png'),
    WorldTime(zone: 'Pacific/Auckland', location: 'Auckland', flag: 'indonesia.png'),
    WorldTime(zone: 'Pacific/Bougainville', location: 'Bougainville', flag: 'indonesia.png'),
    WorldTime(zone: 'Pacific/Chatham', location: 'Chatham', flag: 'indonesia.png'),
    WorldTime(zone: 'Pacific/Chuuk', location: 'Chuuk', flag: 'indonesia.png'),
    WorldTime(zone: 'Pacific/Easter', location: 'Easter', flag: 'indonesia.png'),
    WorldTime(zone: 'Pacific/Efate', location: 'Efate', flag: 'indonesia.png'),
    WorldTime(zone: 'Pacific/Enderbury', location: 'Enderbury', flag: 'indonesia.png'),
    WorldTime(zone: 'Pacific/Fakaofo', location: 'Fakaofo', flag: 'indonesia.png'),
    WorldTime(zone: 'Pacific/Fiji', location: 'Fiji', flag: 'indonesia.png'),
    WorldTime(zone: 'Pacific/Funafuti', location: 'Funafuti', flag: 'indonesia.png'),
    WorldTime(zone: 'Pacific/Galapagos', location: 'Galapagos', flag: 'indonesia.png'),
    WorldTime(zone: 'Pacific/Gambier', location: 'Gambier', flag: 'indonesia.png'),
    WorldTime(zone: 'Pacific/Guadalcanal', location: 'Guadalcanal', flag: 'indonesia.png'),
    WorldTime(zone: 'Pacific/Guam', location: 'Guam', flag: 'indonesia.png'),
    WorldTime(zone: 'Pacific/Honolulu', location: 'Honolulu', flag: 'indonesia.png'),
    WorldTime(zone: 'Pacific/Kiritimati', location: 'Kiritimati', flag: 'indonesia.png'),
    WorldTime(zone: 'Pacific/Kosrae', location: 'Kosrae', flag: 'indonesia.png'),
    WorldTime(zone: 'Pacific/Kwajalein', location: 'Kwajalein', flag: 'indonesia.png'),
    WorldTime(zone: 'Pacific/Majuro', location: 'Majuro', flag: 'indonesia.png'),
    WorldTime(zone: 'Pacific/Marquesas', location: 'Marquesas', flag: 'indonesia.png'),
    WorldTime(zone: 'Pacific/Nauru', location: 'Nauru', flag: 'indonesia.png'),
    WorldTime(zone: 'Pacific/Niue', location: 'Niue', flag: 'indonesia.png'),
    WorldTime(zone: 'Pacific/Norfolk', location: 'Norfolk', flag: 'indonesia.png'),
    WorldTime(zone: 'Pacific/Noumea', location: 'Noumea', flag: 'indonesia.png'),
    WorldTime(zone: 'Pacific/Palau', location: 'Palau', flag: 'indonesia.png'),
    WorldTime(zone: 'Pacific/Pitcairn', location: 'Pitcairn', flag: 'indonesia.png'),
    WorldTime(zone: 'Pacific/Pohnpei', location: 'Pohnpei', flag: 'indonesia.png'),
    WorldTime(zone: 'Pacific/Port_Moresby', location: 'Port Moresby', flag: 'indonesia.png'),
    WorldTime(zone: 'Pacific/Rarotonga', location: 'Rarotonga', flag: 'indonesia.png'),
    WorldTime(zone: 'Pacific/Tahiti', location: 'Tahiti', flag: 'indonesia.png'),
    WorldTime(zone: 'Pacific/Tarawa', location: 'Tarawa', flag: 'indonesia.png'),
    WorldTime(zone: 'Pacific/Tongatapu', location: 'Tongatapu', flag: 'indonesia.png'),
    WorldTime(zone: 'Pacific/Wake', location: 'Wake', flag: 'indonesia.png'),
    WorldTime(zone: 'Pacific/Wallis', location: 'Wallis', flag: 'indonesia.png'),
  ];

  void updateTime(index)async{
    WorldTime instance = locations[index];
    await instance.getTime();
    Navigator.pop(context, {
    'location': instance.location,
    'flag': instance.flag,
    'time': instance.time,
    'date': instance.date ,
    'isDayTime': instance.isDayTime
    });
  }

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print('build state function run');
    }
    return  Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text('Choose Location'),
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(onPressed: () {
            showSearch(context: context, delegate: CustomSearchDelegate(),);
          },
              icon: const Icon(
                Icons.search
              )
          )
        ],
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: ( context, index) {
          return Padding(

            padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
            child: Card(
              child: ListTile(
                onTap: (){
                  updateTime(index);
                },
                title: Text(locations[index].location),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/${locations[index].flag}'),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    'Abidjan',
    'Accra',
    'Kenya'

  ];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return[
      IconButton(icon: const Icon(Icons.clear),
          onPressed: (){
        if(query.isEmpty){
          close(context, null);
        }else {
          query = '';
        }
      })
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
   return IconButton(icon: const Icon(Icons.arrow_back),
       onPressed: (){
     close(context, null);
   });
  }

  @override
  Widget buildResults(BuildContext context) {
    // child:Text(
    //   query,
    //   style: const TextStyle(fontSize: 30,fontWeight:FontWeight.normal ),
    // );

    List<String> matchQuery = [];
    for (var location in searchTerms){
      if (location.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(location);
      }
    }
    return ListView.builder(itemCount: matchQuery.length,
      itemBuilder: (context,index){
      var result = matchQuery[index];
      return ListTile(
        title: Text(result),
      );
      }
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = searchTerms.where((searchTerms) {
      final result = searchTerms.toLowerCase();
      final input = query.toLowerCase();

      return result.contains(input);
    } ).toList();
    // for (var location in searchTerms){
    //   if(location.toLowerCase().contains(query.toLowerCase())){
    //     matchQuery.add(location);
    //   }
    // }
    return ListView.builder(itemCount:matchQuery.length,
        itemBuilder: (context,index){
      var result = matchQuery[index];
      return ListTile(
        title: Text(result),
        onTap: (){
          query = result;
          showResults(context);
        },
      );
        });
  }
  
}
