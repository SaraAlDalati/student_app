import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:student_app/controller/bottombarcontroller.dart';
import 'package:student_app/parent/screen/coursesparent.dart';
import 'package:student_app/parent/screen/marksparent.dart';
import 'package:student_app/parent/screen/report.dart';

import '../controller/bottombarparcontroller.dart';
import 'homepagepar.dart';


Color darkblue= Color.fromRGBO(65, 105, 225,1);
Color white= Color.fromRGBO(244, 241, 241,1);
Color  lightblue= Color.fromRGBO(233, 238, 252,1);
BottomBarParController controller = Get.find();
class BottomBarPerent extends StatelessWidget {
  
final List<Widget> _pages = [
 HomePageParent(),
 CoursesParent(),
 MarksParent(),
const Report(),
 

    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
   extendBody: true,
       body: GetX<BottomBarParController>(
        builder: (controller) => _pages[controller.currentIndex.value],
      ),
       bottomNavigationBar: CurvedNavigationBar(
        //  index: index,
         
          items: [
Image.asset(
              "assets/icons/homepage.png",
              height: 40,
              width: 40,
            ),
            Image.asset(
              "assets/icons/courses.png",
              height: 40,
              width: 40,
            ),
            
            Image.asset(
              "assets/icons/marks.png",
              height: 40,
              width: 40,
            ),
            Image.asset(
              "assets/icons/report.png",
              height: 40,
              width: 40,
            )
          ],
          backgroundColor: Color.fromRGBO(244, 241, 241, 1),
          height: 60,
          color: Color.fromRGBO(65, 105, 225, 1),
          animationDuration: Duration(milliseconds: 200),
           onTap: (index) {
            controller.currentIndex.value = index;
       //  Get.find<BottomBarController>().updateIndex(index);
},
        ),
      
      
    );
  }
}