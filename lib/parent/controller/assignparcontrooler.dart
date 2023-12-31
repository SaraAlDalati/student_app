import 'package:get/get.dart';
import 'package:student_app/data/remote/assigndata.dart';
import 'package:student_app/model/AssignModel.dart';

import '../data/assignpardata.dart';
import '../model/assignparmodel.dart';



class AssignParController extends GetxController {
  var assignparList = <AssignParModel>[];
  late bool isLoading = true;

 // final Rx<AssignModel?> courses = Rx<AssignModel?>(null);
  AssignParData assignparData = AssignParData(Get.find());
  @override
  void onInit() {
    getData();
    super.onInit();
  }

  void getData() async {
    try {
      //aboutsubList.clear();
      isLoading = true;
      update();
      print("cccccccccccccccccccccccccccccccccccccccc");
      var response = await assignparData.getData();
      print(
          "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
      isLoading = false;
      if (response["status"]) {
        for (var data in response["assignments"]) {
          assignparList.add(AssignParModel.fromJson(data));
        ///  print(data);
        }
      }
    } catch (e) {
      print(e);
    }
  }
}
