import 'package:get/get.dart';
import 'package:student_app/parent/model/courseparmodel.dart';
import '../data/coursepardata.dart';

class CourseParController extends GetxController {
  List coursesparList = <CoursesParModel>[];
  late bool isLoading = true;
  CourseParData coursesparData = CourseParData(Get.find());
  @override
  void onInit() async {
    await getcourseData();
    super.onInit();
  }

  getcourseData() async {
    try {
      coursesparList.clear();
      isLoading = true;
      update();
      print("cccccccccccccccccccccccccccccccccccccccc");
      var response = await coursesparData.getData();
      print(
          "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
      isLoading = false;
      if (response["status"]) {
        for (var data in response["courses"]) {
          coursesparList.add(CoursesParModel.fromJson(data));
          // print(data);

        }

        print(
            "//////////////////////////////////////${coursesparList[0].name}");
      }
    } catch (e) {
      print(e);
    }
  }
}
