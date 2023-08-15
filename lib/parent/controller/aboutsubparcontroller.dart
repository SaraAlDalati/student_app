import 'package:get/get.dart';
import 'package:student_app/data/remote/aboutsubdata.dart';
import 'package:student_app/model/AboutsubModel.dart';

import '../data/aboutsubpardata.dart';
import '../model/aboutsubparmodel.dart';

class AboutSubParController extends GetxController {
 // String? subject;
  bool isLoading = true;

  AboutSubParModel? aboutsubpar;
  AboutsubParData aboutsubparData = AboutsubParData(Get.find());
  @override
  void onInit() {
    getData();
   // subject = Get.arguments["id"];

    super.onInit();
  }

  void getData() async {
    try {
      isLoading = true;
      update();
      print("cccccccccccccccccccccccccccccccccccccccc");
      var response = await aboutsubparData.getData();
      print(
          "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
      isLoading = false;
      if (response["status"]) {
        aboutsubpar = AboutSubParModel.fromJson(response);
        // print(aboutsub);
        update();
      }
    } catch (e) {
      print(e);
    }
  }
}
