import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class worldTime {
  String? location;
  String? time;
  String? flag;
  String? url;
  bool? isDayTime;

  worldTime({this.location, this.flag, this.url});

  Future<void> getTime() async {
    try {
      Response response =
          // await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
          await get(Uri.parse(
              'https://timeapi.io/api/Time/current/zone?timeZone=$url'));
      Map data = jsonDecode(response.body);
      String dateTime = data['dateTime'];
      DateTime now = DateTime.parse(dateTime);
      isDayTime = (now.hour >= 0 && now.hour <= 18) ? true : false;
      time = DateFormat.jm().format(now);
    } catch (e) {
      print('error message - $e');
      time = "could not load time";
    }
  }
}
