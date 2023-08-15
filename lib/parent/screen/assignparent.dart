import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';
import 'package:student_app/controller/assigncontroller.dart';
import 'package:student_app/controller/checkboxassigncontroller.dart';

import '../controller/assignparcontrooler.dart';

Color darkblue = Color.fromRGBO(65, 105, 225, 1);
Color white = Color.fromRGBO(244, 241, 241, 1);
Color lightblue = Color.fromRGBO(233, 238, 252, 1);


class AssignSubParent extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
     AssignParController assignparcontroller = Get.find();
    
    return Scaffold(
      backgroundColor: white,
      body: GetBuilder<AssignParController>(
        builder: ( assignparcontroller) => 
         GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 400,
              childAspectRatio: 1.9,
              crossAxisSpacing: 30,
              mainAxisSpacing: 1,
            ),
            itemCount: assignparcontroller.assignparList.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Container(
                  height: 150.h,
                  width: 200.w,
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: darkblue.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 7,
                        // offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(children: [
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: Row(
                        children: [
                          Text(
                            "${assignparcontroller.assignparList[index].title}",
                            style: Theme.of(context).textTheme.headline1,
                          ),
                        
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Text(
                       "${assignparcontroller.assignparList[index].content}",
                        style: Theme.of(context).textTheme.headline5,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 175, top: 10),
                      child: Text(
                        "${assignparcontroller.assignparList[index].dueDate}",
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    )
                  ]),
                ),
              );
            }),
      ),
    );
  }
}
