import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:student_app/core/checkinternet.dart';
import 'package:student_app/core/statusrequest.dart';

import '../applink.dart';

class Crud {
  final box = GetStorage();

  Future postData(String linkUrl, data, String headers) async {
    print(data);

    var response = await http.post(Uri.parse(linkUrl),
        body: data, headers: {'Authorization': "Bearer ${box.read("token")}"});
    if (response.statusCode == 200 || response.statusCode == 201) {
      print('before response body //////////////////////////////////////////');

      var responseBody = jsonDecode(response.body);

      return responseBody;
    } else {
      print(
          'before else //////////////////////////////////////////${response.statusCode}');
    }
  }

  Future GetData(String linkUrl, String headers) async {
    print('before curd  get//////////////////////////////////////////');
    var response = await http.get(
      Uri.parse(linkUrl),
      headers: {
        'Authorization': "Bearer 16|Z7LWO7CmrSBThBpCTd2tYBGKdlh68r0slqi5U0yv"
      },
    );
    print("after curd get //////////////////////////////////");
    if (response.statusCode == 200 || response.statusCode == 201) {
      print(
          'before response get//////////////////////////////////////////////////////');
      var responseBody = await jsonDecode(response.body);
      return responseBody;
    } else {
      print("Request failed with status: ${response.statusCode}.");
    }
  }
}
