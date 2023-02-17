

import 'package:flutter/material.dart';
import '../services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  List <WorldTime> locations = [
    WorldTime(zone: 'Europe/London', location: 'London', flag: 'uk.png'),
    WorldTime(zone: 'Europe/Berlin', location: 'Athens', flag: 'greece.png'),
    WorldTime(zone: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
    WorldTime(zone: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
    WorldTime(zone: 'America/Chicago', location: 'Chicago', flag: 'usa.png'),
    WorldTime(zone: 'America/New_York', location: 'New York', flag: 'usa.png'),
    WorldTime(zone: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'),
    WorldTime(zone: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'),
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
    print('build state function run');
    return  Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text('Choose Location'),
        centerTitle: true,
        elevation: 0,
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
