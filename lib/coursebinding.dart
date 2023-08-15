
import 'package:get/get.dart';
import 'package:student_app/controller/aboutsubcontroller.dart';
import 'package:student_app/controller/assigncontroller.dart';
import 'package:student_app/controller/coursescontroller.dart';
import 'package:student_app/controller/marksubcontroller.dart';

class CoursesBinding implements Bindings {
  @override
  void dependencies() {
    
    
 

  Get.put(AboutSubController());

     Get.put(MarkSubController());
     Get.put(AssignController());
  }


}
