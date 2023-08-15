import 'package:get/get.dart';
import 'package:student_app/data/remote/marksubdata.dart';
import 'package:student_app/data/remote/profiledata.dart';

import 'package:student_app/model/studentmodel.dart';

import 'package:get/get.dart';

import '../data/marksubpardata.dart';
import '../model/marksubparmodel.dart';

class MarkSubParController extends GetxController {
  late bool isLoading = true;
  var Firstpar = <FirstTermPar>[];
  var Secondpar = <SecondTermPar>[];
  MarkSubParData marksubparData = MarkSubParData(Get.find());
  @override
  void onInit() {
    getfirstData();
    getSecondData();
    super.onInit();
  }

  void getfirstData() async {
    try {
      isLoading = true;
      update();
      print("cccccccccccccccccccccccccccccccccccccccc");
      var response = await marksubparData.getData();
      print(
          "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
      isLoading = false;
      if (response["status"]) {
        for (var data in response["first_term"]) {
          Firstpar.add(FirstTermPar.fromJson(data));
         // print(data);
        }
      }
    } catch (e) {
      print(e);
    }
  }

  void getSecondData() async {
    try {
      isLoading = true;
      update();
      print("cccccccccccccccccccccccccccccccccccccccc");
      var response = await marksubparData.getData();
      print(response);
      print(
          "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
      isLoading = false;
      if (response["status"]) {
        for (var data in response["second_term"]) {
          Secondpar.add(SecondTermPar.fromJson(data));
          print(data);
         // print('saraaaaaaaaaaaaaaaaaaaaaaaaa');
        }
      }
    } catch (e) {
      print(e);
    }
  }
}
