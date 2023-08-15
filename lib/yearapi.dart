/* import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:student_app/model/yearmodel.dart';
 class MyURL {
  static const String url = "http://192.168.1.104:8000/api/";
  static const String token = '22|8vYLJS96dkED4zUbsCu5RBScxoQLuYGePaRrpbLE';
}

Future<List<YearModel>> getgrades() async {
    List<YearModel> lg = [];
    try {
      http.Response response =
          await http.get(Uri.parse('${MyURL.url}teachers/grades'), headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': 'Bearer ${MyURL.token}'
      });
      if (response.statusCode == 200 || response.statusCode == 201) {
        
        lg.addAll(YearModel().fromJson(jsonDecode(response.body)).data!);
        
        return lg;
      } else if (response.statusCode == 400) {
        print('getgrades Funtion in statusCode :');
        print(response);
      }
    } catch (error) {
      print('getgrades Funtion in cathc :');
      print(error);
      
    }
    return [];
  }*/