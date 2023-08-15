import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:student_app/controller/examscontroller.dart';

import '../controller/examsparcontroller.dart';

Color darkblue = Color.fromRGBO(65, 105, 225, 1);
Color white = Color.fromRGBO(244, 241, 241, 1);
Color lightblue = Color.fromRGBO(233, 238, 252, 1);
Color blue = Color.fromARGB(255, 141, 168, 209);

class ExamsPar extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    ExamsParController examsparController =Get.find();
    return Scaffold(
      appBar: AppBar(
        title: Text("Exams"),
      ),
      backgroundColor: white,
      body: Column(
        children: [
Container(color: blue,
height: 40.h,
alignment: Alignment.center,
  child: Row(children: [
  
  Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20),
  
                                  child: Text(
  
                                    "Date",
  
                                    style: Theme.of(context).textTheme.headline1,
  
                                  ),
  
                                ),
  
  Padding(
  
                                  padding: const EdgeInsets.only(left: 30),
  
                                  child: Text(
  
                                    "Duration",
  
                                    style: Theme.of(context).textTheme.headline1,
  
                                  ),
  
                                ),
  Padding(
  
                                  padding: const EdgeInsets.only(left: 55),
  
                                  child: Text(
  
                                    "Subject",
  
                                    style: Theme.of(context).textTheme.headline1,
  
                                  ),
  
                                ),
  ],),
),

          GetBuilder<ExamsParController>(builder: (examsparController)=>
             Expanded(
              child: ListView.builder(
                /*  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 400,
                    childAspectRatio: 7,
                    crossAxisSpacing: 30,
                    mainAxisSpacing: 2,
                  ),*/
                  itemCount: examsparController.examsparList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 60.h,
                      width: 200.w,
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 141, 168, 209).withOpacity(0.5),
                            spreadRadius: 5,
                            // blurRadius: 7,
                            // offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(children: [
                        Padding(
                          padding:
                              const EdgeInsets.symmetric(vertical: 3, horizontal: 5),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                            child: Row(
                              children: [
                              /* Text(
                                  "Sun",
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),*/
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 2),
                                    child: Text(
                                      "${examsparController.examsparList[index].date}${examsparController.examsparList[index].startAt}",
                                      style: Theme.of(context).textTheme.bodyText1,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 25),
                                    child: Text(
                                      "${examsparController.examsparList[index].duartion}",
                                      style: Theme.of(context).textTheme.bodyText1,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex:2,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 48),
                                    child: Text(
                                    "${examsparController.examsparList[index].courseName}",
                                      style: Theme.of(context).textTheme.headline1,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        
                      ]),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
