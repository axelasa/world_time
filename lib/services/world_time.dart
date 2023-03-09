import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime{
  late String location; // location time for Ui
  late String time;// the time in that location
  late String twelveHourTime;
  late String date; // the date in that country
  late String flag; // url to asset flag icon
  late String zone; // this is the Location url for api endpoint
  late bool isDayTime; // shows if it's daytime or not

WorldTime({required this.location,required this.flag,required this.zone});

  Future<void> getTime() async{
    // make the request

    try {
      var url = Uri.parse('http://worldtimeapi.org/api/timezone/$zone');
      var response = await http.get(url);
      Map data = jsonDecode(response.body);
      //print (data);

      //get properties from Json data
      String dateTime = data['datetime'];
      String offset = data['utc_offset'].toString().substring(0,3);
      String abbreviation = data["abbreviation"].toString();
       print(dateTime);
      print(offset);
      print(abbreviation);

      DateTime now = DateTime.parse(dateTime);
      print(now);
      now = now.add(Duration(hours: int.parse(offset)));
      print("HERE IS NOW -> $now");

      isDayTime = now.hour >= 6 && now.hour <= 18 ? true : false ;
      //set the time property
      time = DateFormat().add_Hm().format(now);
      twelveHourTime = DateFormat().add_jm().format(now);
      date = DateFormat().add_yMMMd().format(now);
      if (kDebugMode) {
        print(time);
        print(twelveHourTime);
        print(date);
      }

    }catch(e){
      print('caught error $e');
          time = 'could not get time data';
          date = 'could not get date data';
    }
  }

}

