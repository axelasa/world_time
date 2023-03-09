
import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';



class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void setUpWorldTime() async {
    WorldTime instance = WorldTime(location: 'Nairobi', flag: 'kenya.png', zone: 'Africa/Nairobi');
    await instance.getTime();
    Navigator.pushReplacementNamed(context, '/home',arguments:{
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'date': instance.date,
      'isDayTime': instance.isDayTime
    });
  }

  @override
  void initState(){
    super.initState();
    setUpWorldTime();
  }
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Colors.grey[900],
      body: const Center(
        child:Text('data'),
        // child: SpinKitFadingFour(
        //   color: Colors.white,
        //   size: 80,
        // ),
      ),
      );
  }
}
