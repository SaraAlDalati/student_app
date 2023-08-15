import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:student_app/colors.dart';
import 'package:student_app/controller/markscontroller.dart';
import 'package:student_app/controller/marksubcontroller.dart';

class Marks extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    MarksController markscontroller = Get.find();
    return Scaffold(
       extendBody: true,
      appBar: AppBar(
        title: Text(
          " Marks",
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: InkWell(
              onTap: () => Get.toNamed('/notify'),
              child: Container(
                height: 35,
                width: 35,
                child: Image.asset("assets/icons/bell (1).png"),
              ),
            ),
          )
        ],
      ),
      backgroundColor: white,
        
      body:
     //  markscontroller.isLoading?Center(child: CircularProgressIndicator(),):
      GetBuilder<MarksController>(
        builder: (markscontroller) => Container(
         color: white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: DropdownButton(
                        iconSize: 35,
                        iconEnabledColor: darkblue,
                        elevation: 16,
                       
                    
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 19.sp,
                          color: darkblue,
                          fontWeight: FontWeight.bold,
                        ),
                        underline: const Text(''),
                        dropdownColor: lightblue,
                        borderRadius: BorderRadius.circular(15),
                        items:
                           markscontroller .schoolyearItems.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            alignment: Alignment.center,
                            child: Text(value),
                          );
                        }).toList(),
                        value: markscontroller .schoolyear,
                        onChanged: (value) => 
                          markscontroller.onDropdownChangedSchoolyear('$value')
                      
                      ),
                    ),
                    
                  ],
                ),
              ),
              GetBuilder<MarksController>(
                builder: (markscontroller) => 
                 Expanded(
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: markscontroller.marksList.length,
                      itemBuilder: (BuildContext context, int index) {
                          print("+++++++++++++++++++sara++++++++++++++++++");
                        return Container(
                            // color: lightblue,
                            height: 70.h,
                            width: 500.w,
                            decoration: BoxDecoration(
                              color: lightblue,
              
                              //  borderRadius: BorderRadius.circular(30),
              
                              // color: Color.fromRGBO(169, 33, 33, 1),
              
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromARGB(255, 141, 168, 209)
                                      .withOpacity(0.5),
              
                                  spreadRadius: 4,
              
                                  //   blurRadius: 5,
              
                                  // offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Image.asset(
                                    "assets/icons/relativity.png",
                                    height: 40.h,
                                    width: 40.w,
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: TextButton(
                                    child: Text(
                                       "${markscontroller.marksList[index].gradeCourse!.course!.name}",
                                    
                                      style:
                                          Theme.of(context).textTheme.headline1,
                                    ),
                                    onPressed: () {
                                      Get.toNamed('/subject');
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Expanded(
                                    flex: 2,
                                    child: Container(
                                      height: 35.h,
                                      width: 85.w,
                                      decoration: BoxDecoration(
                                        color: white,
                                                
                                        borderRadius: BorderRadius.circular(30),
                                                
                                        // color: Color.fromRGBO(169, 33, 33, 1),
                                                
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Color.fromARGB(255, 161, 177, 201)
                                                    .withOpacity(0.5),
                                                
                                            // spreadRadius: 4,
                                                
                                            blurRadius: 7,
                                                
                                            // offset: Offset(0, 3),
                                          ),
                                        ],
                                      ),
                                      child: Center(
                                          child: Text(
                                               "${markscontroller.marksList[index].finalScore}",
                                              style: TextStyle(
                                                  fontFamily: 'Montserrat',
                                                  color: darkblue,
                                                  fontSize: 23.sp,
                                                  fontWeight: FontWeight.w800))),
                                    ),
                                  ),
                                ),
                              ],
                            ));
                      }),
                ),
              ),
            ]
          ))));
       
  }
}
