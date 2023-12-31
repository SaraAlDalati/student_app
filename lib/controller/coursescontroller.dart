import 'package:get/get.dart';
import 'package:student_app/data/remote/aboutsubdata.dart';
import 'package:student_app/data/remote/coursesdata.dart';
import 'package:student_app/data/remote/profiledata.dart';
import 'package:student_app/model/coursesmodel.dart';
import 'package:student_app/model/studentmodel.dart';

import 'package:get/get.dart';

import '../model/AboutsubModel.dart';

class CoursesController extends GetxController {
  List<CoursesModel> coursesList = [];
  late bool isLoading = true;

  CoursesData coursesData = CoursesData(Get.find());
  @override
  void onInit() {
    print(
        "saraaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
    getData();
    super.onInit();
  }

  void getData() async {
    try {
      coursesList.clear();
      isLoading = true;
      update();
      print("cccccccccccccccccccccccccccccccccccccccc");
      var response = await coursesData.getData();
      print(
          "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
      isLoading = false;
      if (response["status"]) {
        for (var data in response["courses"]) {
          coursesList.add(CoursesModel.fromJson(data));
          print(data);
        }

        print(
            "//////////////////////////////////////${coursesList[0].pivot!.courseId}");
      }
    } catch (e) {
      print(e);
    }
  }
}
