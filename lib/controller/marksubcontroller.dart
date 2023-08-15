import 'package:get/get.dart';
import 'package:student_app/data/remote/marksubdata.dart';
import 'package:student_app/data/remote/profiledata.dart';
import 'package:student_app/model/marksubmodel.dart';
import 'package:student_app/model/studentmodel.dart';

import 'package:get/get.dart';

class MarkSubController extends GetxController {
  late bool isLoading = true;
  var First = <FirstTerm>[];
  var Second = <SecondTerm>[];
  MarkSubData marksubData = MarkSubData(Get.find());
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
      var response = await marksubData.getData();
      print(
          "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
      isLoading = false;
      if (response["status"]) {
        for (var data in response["first_term"]) {
          First.add(FirstTerm.fromJson(data));
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
      var response = await marksubData.getData();
     // print(response);
      print(
          "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
      isLoading = false;
      if (response["status"]) {
        for (var data in response["second_term"]) {
          Second.add(SecondTerm.fromJson(data));
         // print(data);
         // print('saraaaaaaaaaaaaaaaaaaaaaaaaa');
        }
      }
    } catch (e) {
      print(e);
    }
  }
}
