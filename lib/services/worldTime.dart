import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'dart:convert';

class WorldTime {
  String location;
  String time;
  String url;

  WorldTime({this.location, this.url});

  Future<void> getData() async {
    try {
      // http request
      Response response =
          await get('http://worldtimeapi.org/api/timezone/$url');
      Map data = jsonDecode(response.body);
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);

      // 创建时间对象
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      // 优化时间
      time = DateFormat.jm().format(now);
    } catch (e, s) {
      print('e is $e');
      print('s is $s');
      time = 'could not get time';
    }
  }
}
