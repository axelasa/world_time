
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    
    data =data.isNotEmpty ? data : ModalRoute.of(context)?.settings.arguments as Map;
    print (data);


    //set background Image
    String bgImage = data['isDayTime'] ? 'day.jpg' : 'night.jpg';
    Color? bgColor = data['isDayTime'] ? Colors.white60 : Colors.grey[600];

    return  Scaffold(
      backgroundColor: bgColor,
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/$bgImage'),
                fit: BoxFit.cover,
              )
            ),
            child: Padding(
                padding: const EdgeInsets.fromLTRB(0,85,0,0),
              child: Column(
            children: [
              TextButton.icon(onPressed: () async{
                dynamic result = await Navigator.pushNamed(context,'/location');
                setState(() {
                  data = {
                    'location': result['location'],
                    'time': result['time'],
                    'date':result['date'] ,
                    'flag':result['flag'],
                    'isDayTime':result['isDayTime']
                  };
                  print('Here is the new data -> $data');
                });
              },
                icon: Icon(
                  Icons.edit_location,
                  color: Colors.grey[100],
                ),
                label:  Text('edit location',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w900,
                    color: Colors.grey[100]
                  ),

                ),
              ),
              const SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Padding(
                 padding: const EdgeInsets.all(10.0),
                 child: CircleAvatar(
                  backgroundImage: AssetImage('assets/${data['flag']}'),
              ),
               ),
              Text(data['location'],
                style: const TextStyle(
                  fontSize: 28,
                  letterSpacing: 2,
                  color: Colors.white
                ),
              ),
            ],
    ),
              const SizedBox(height: 20),
              Text(data['date'],
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.normal
                ),
              ),
              const SizedBox(height: 20),
              Text(data['time'],
                style: const TextStyle(
                    color: Colors.white,
                  fontSize: 68,
                  fontWeight: FontWeight.bold
                ),
              ),
            ],
        )),
          ),
      ),
    );
  }
}
