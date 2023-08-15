import 'dart:convert';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import '../model/programmodel.dart';
import '../parent/model/programparmodel.dart';
import '../view/screen/calender/days.dart';
import '../view/screen/calender/eventmodel.dart';

class MyURL {
  static const String url = "http://192.168.1.104:8000/api/";
  static const String token = '15|hdTN1yPJthA8WbG8GOf3pbob3hZRzkSvNlWeOAq1';
}

class RestAPIGetPar {
  static Future<ProgramParModel> getprogram(String id) async {
    ProgramParModel pm = ProgramParModel();
    try {
      http.Response response = await http.get(
        Uri.parse('${MyURL.url}guardians/schedules?student_id=$id'),
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'Bearer 16|Z7LWO7CmrSBThBpCTd2tYBGKdlh68r0slqi5U0yv'
        },
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        print(response.body);
        pm = ProgramParModel.fromJson(jsonDecode(response.body)['schedule']);
        return pm;
      } else if (response.statusCode == 400) {
        print('getprograme Funtion:');
        print(response);
      }
    } catch (error) {
      print('getprograme Funtion in catch:');
      print(error);
    }
    return pm;
  }

  static Future<Map<DateTime, List<Event>>> getevents() async {
    try {
      http.Response response =
          await http.get(Uri.parse('${MyURL.url}calendar'), headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json; charset=UTF-8',
      });

      if (response.statusCode == 200 || response.statusCode == 201) {
        // print('-------------');
        Map<DateTime, List<Event>> convertedMap = {};

        var res = jsonDecode(response.body)['data'];
        // print(res);

        res.forEach((key, value) {
          try {
            DateTime dateTime = DateTime.parse(key);
            dateTime =
                DateTime.utc(dateTime.year, dateTime.month, dateTime.day);
            print(dateTime);
            List<Event> events = (value as List)
                .map(
                  (e) => Event(
                    title: e['title'],
                    isHoliday: e['type'] == 'holiday',
                    content: e['content'],
                  ),
                )
                .toList();
            convertedMap[dateTime] = events;
          } catch (err) {
            // print('object');
            print('getevents Funtion:');
            print(err);
          }
        });

        return convertedMap;
      } else if (response.statusCode == 400) {
        print('getevents Funtion:');
        print(response);
      }
    } catch (error) {
      print('getevents Funtion:');
      print(error);
    }
    return {Days.today: []};
  }
}

class RestAPIPost {
  static Future<void> postlogin(String name, String password) async {
    try {
      http.Response response = await http.post(
        Uri.parse('${MyURL.url}teachers/login'),
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(
          <String, String>{
            'username': name,
            'password': password,
          },
        ),
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        var res = jsonDecode(response.body);
        final box = GetStorage();

        box.write('token', res["token"]);

// print(res);
        // do logic here
        return;
      } else if (response.statusCode == 400) {
        print('postlogin Funtion:');
        print(response);
      }
    } catch (error) {
      print('postlogin Funtion in catch:');
      print(error);
    }
    return;
  }
}
