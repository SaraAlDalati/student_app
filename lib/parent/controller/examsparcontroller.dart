
import 'package:get/get.dart';
import 'package:student_app/data/remote/aboutsubdata.dart';
import 'package:student_app/data/remote/examsdata.dart';
import 'package:student_app/data/remote/marksdata.dart';
import 'package:student_app/data/remote/profiledata.dart';
import 'package:student_app/model/examsmodel.dart';
import 'package:student_app/model/marksmodel.dart';
import 'package:student_app/model/studentmodel.dart';
import 'package:get/get.dart';

import '../data/examdatapar.dart';
import '../model/examsparmodel.dart';


class ExamsParController extends GetxController {
  var examsparList = <ExamsParModel>[];
  

  late bool isLoading = true;

  
  ExamsParData examsparData = ExamsParData(Get.find());
  @override
  void onInit() {
    getData();
    super.onInit();
  }

  void getData() async {
    try {
    //  marksList.clear();
      isLoading = true;
      update();
      print("cccccccccccccccccccccccccccccccccccccccc");
      var response = await examsparData.getData();
      //print(response);
      print(
          "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
      isLoading = false;
      if (response["status"]) {
        for (var data in response["data"]) {
          examsparList.add(ExamsParModel.fromJson(data));
       // print(data);
        }
      // print("sasasasasasaasas");
      }
    } catch (e) {
      print(e);
    }
  }

 
}
