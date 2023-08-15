import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:student_app/colors.dart';
import 'package:student_app/parent/controller/courseparcontroller.dart';

class CoursesParent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CourseParController courseParController = Get.find();
    final box = GetStorage();
    return Scaffold(
        backgroundColor: white,
        appBar: AppBar(
          title: Text("8".tr),
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
        extendBody: true,
        body:
            //  courseParController.isLoading?Center(child: CircularProgressIndicator(),):
            GetBuilder<CourseParController>(
          builder: ((courseParController) => GridView.builder(
              scrollDirection: Axis.vertical,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 1,
                crossAxisSpacing: 5,
                mainAxisSpacing: 1,
              ),
              itemCount: courseParController.coursesparList.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 15),
                    child: Container(
                      height: 140.h,
                      width: 130.w,
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Image.asset(
                            "assets/icons/relativity.png",
                            height: 90,
                            width: 90,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4),
                          child: Text(
                              "${courseParController.coursesparList[index].name}",
                              style: Theme.of(context).textTheme.headline1),
                        )
                      ]),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(233, 238, 252, 1),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 95, 109, 154)
                                .withOpacity(0.5),
                            spreadRadius: 6,
                            blurRadius: 7,

                            // offset: Offset(0, 3),
                          ),
                        ],
                      ),
                    ),
                  ),
                  onTap: () {
                    box.write(
                        "course_id",
                        courseParController
                            .coursesparList[index].pivot!.courseId);
                    Get.toNamed('/subject', arguments: {
                      "name":
                          "${courseParController.coursesparList[index].name}",
                    });

                    print(box.read("course_id"));
                  },
                );
              })),
        ));
  }
}
