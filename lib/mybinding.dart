import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:student_app/controller/aboutsubcontroller.dart';
import 'package:student_app/controller/assigncontroller.dart';
import 'package:student_app/controller/bottombarcontroller.dart';
import 'package:student_app/controller/checkboxassigncontroller.dart';
import 'package:student_app/controller/coursescontroller.dart';
import 'package:student_app/controller/examscontroller.dart';
import 'package:student_app/controller/markscontroller.dart';
import 'package:student_app/controller/marksubcontroller.dart';

import 'package:student_app/core/crud.dart';
import 'package:student_app/parent/controller/aboutsubparcontroller.dart';
import 'package:student_app/parent/controller/assignparcontrooler.dart';
import 'package:student_app/parent/controller/bottombarparcontroller.dart';
import 'package:student_app/parent/controller/courseparcontroller.dart';

import 'package:student_app/parent/controller/marksparcontroller.dart';
import 'package:student_app/parent/controller/marksubparcontroller.dart';
import 'package:student_app/view/screen/profile.dart';

import 'controller/profilecontroller.dart';

class MyBinding implements Bindings {
  @override
  void dependencies() {
    // Get.put(MyLocaleController());
    //Get.put(CheckBoxController(), permanent: true);
 // Get.put(BottomBarController(), permanent: true);
    Get.put(Crud());
   // Get.put(AboutSubController(), permanent: true);
    Get.put(BottomBarParController(), permanent: true);
     //Get.put(MarkSubController(), permanent: true);
    // Get.put(AssignController(), permanent: true);
    //Get.put(CoursesController(), permanent: true);
    // Get.put(ProfileController(), permanent: true);
    // Get.put(MarksController(), permanent: true);
  
   Get.put(CourseParController(), permanent: true);
     Get.put(MarksParController(), permanent: true);
     Get.put(AboutSubParController(), permanent: true);
      Get.put(AssignParController(), permanent: true);
     Get.put(MarkSubParController(), permanent: true);
//Get.put(ExamsController(), permanent: true);
    
  }


}
