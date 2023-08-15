import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student_app/colors.dart';

import '../../view/screen/Component/cellDay.dart';
import '../../view/screen/Component/cellTime.dart';
import '../../view/screen/Component/shadow.dart';
import '../../view/screen/Component/withoutShadow.dart';
import '../controller/homepageparcontrollrt.dart';

int index = 2;
Color darkblue = Color.fromRGBO(65, 105, 225, 1);
Color white = Color.fromRGBO(244, 241, 241, 1);
Color lightblue = Color.fromRGBO(233, 238, 252, 1);

class HomePageParent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    HomePageParController homeParcontroller = Get.put(HomePageParController());
    return Scaffold(
      //drawer: ,
      extendBody: true,
      appBar: AppBar(
        title: Text("1".tr),
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
      drawer: Drawer(
        backgroundColor: white,
        child: Column(children: [
          UserAccountsDrawerHeader(
            accountName: Text("Sara Al Dalati",
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 18.sp,
                  color: lightblue,
                  fontWeight: FontWeight.bold,
                )),
            accountEmail: Text("@sarada",
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 10.sp,
                  color: lightblue,
                  fontWeight: FontWeight.bold,
                )),
            currentAccountPicture: CircleAvatar(
              backgroundColor: lightblue,
            ),
            decoration: BoxDecoration(color: darkblue),
          ),
          ListTile(
            title: Text("Home page",
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 19.sp,
                  color: blue,
                  fontWeight: FontWeight.bold,
                )),
            onTap: () => print(""),
            leading: Image.asset(
              "assets/icons/homepage.png",
              height: 35.h,
              width: 35.w,
            ),
          ),
          ListTile(
            title: Text("Exams ",
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 19.sp,
                  color: blue,
                  fontWeight: FontWeight.bold,
                )),
            onTap: () => Get.toNamed("/exam"),
            leading: Image.asset(
              "assets/icons/score (1).png",
              height: 35.h,
              width: 35.w,
            ),
          ),
          ListTile(
            title: Text("Calender ",
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 19.sp,
                  color: blue,
                  fontWeight: FontWeight.bold,
                )),
            onTap: () => Get.toNamed("/calender"),
            leading: Image.asset(
              "assets/icons/schedule (1).png",
              height: 35.h,
              width: 35.w,
            ),
          ),
          ListTile(
            title: Text("Settings ",
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 19.sp,
                  color: blue,
                  fontWeight: FontWeight.bold,
                )),
            onTap: () => print(""),
            leading: Image.asset(
              "assets/icons/gear.png",
              height: 35.h,
              width: 35.w,
            ),
          )
        ]),
      ),
      body: GetBuilder<HomePageParController>(
        builder: (_) => homeParcontroller.isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Container(
                color: Color.fromRGBO(244, 241, 241, 1),
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
                                items: homeParcontroller.childItems
                                    .map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    alignment: Alignment.center,
                                    child: Text(value),
                                  );
                                }).toList(),
                                value: homeParcontroller.child,
                                onChanged: (value) => homeParcontroller
                                    .onDropdownChangedChild('$value')),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Container(
                        height: 360.h,
                        width: 500.w,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(233, 238, 252, 1),
                          borderRadius: BorderRadius.circular(2),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 95, 109, 154)
                                  .withOpacity(0.5),
                              spreadRadius: 6,
                              blurRadius: 7,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(2),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(14),
                                    child: Container(
                                      height: 50.h,
                                      width: 35.w,
                                      child: Image.asset(
                                        "assets/icons/schedule (2).png",
                                        height: 60,
                                        width: 60,
                                      ),
                                    ),
                                  ),
                                  const CellDay(dayInCell: 'Sun'),
                                  const CellDay(dayInCell: 'Mon'),
                                  const CellDay(dayInCell: 'Tue'),
                                  const CellDay(dayInCell: 'Wed'),
                                  const CellDay(dayInCell: 'Thu'),
                                ],
                              ),
                            ),
                            Expanded(
                              child: ListView.builder(
                                itemCount:
                                    homeParcontroller.schedule.sunday!.length,
                                itemBuilder: (context, index) => Padding(
                                  padding: const EdgeInsets.all(6),
                                  child: Row(
                                    children: [
                                      CellTime(timeInCell: '${7 + index}:00 '),
                                      CellWithShadow(
                                          textInCell: homeParcontroller.schedule
                                              .sunday![index].courseName!),
                                      CellWithoutShadow(
                                          textInCell: homeParcontroller.schedule
                                              .monday![index].courseName!),
                                      CellWithShadow(
                                          textInCell: homeParcontroller.schedule
                                              .tuesday![index].courseName!),
                                      CellWithoutShadow(
                                          textInCell: homeParcontroller.schedule
                                              .wednesday![index].courseName!),
                                      CellWithShadow(
                                          textInCell: homeParcontroller.schedule
                                              .thursday![index].courseName!),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
      ),
    );
  }
}
