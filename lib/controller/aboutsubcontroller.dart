import 'package:get/get.dart';
import 'package:student_app/data/remote/aboutsubdata.dart';
import 'package:student_app/data/remote/profiledata.dart';
import 'package:student_app/model/AboutsubModel.dart';
import 'package:student_app/model/studentmodel.dart';

import 'package:get/get.dart';

import '../fetch.dart';

class AboutSubController extends GetxController {
 // List<AboutSubModel> aboutsubList = [];
   bool isLoading = true;

   AboutSubModel? aboutsub ;
  AboutsubData aboutsubData = AboutsubData(Get.find());
  @override
  void onInit() {
    getData();
    super.onInit();
  }

  void getData() async {
    try {
      isLoading = true;
      update();
      print("cccccccccccccccccccccccccccccccccccccccc");
      var response = await aboutsubData.getData();
      print(
          "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
      isLoading = false;
      if (response["status"]) {
        aboutsub= AboutSubModel.fromJson(response);
        print(aboutsub);
        
        update();
      }
      
    } catch (e) {
        print(e);
      }
    }
  }

