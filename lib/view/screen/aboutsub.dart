import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../controller/aboutsubcontroller.dart';


Color darkblue = Color.fromRGBO(65, 105, 225, 1);
Color white = Color.fromRGBO(244, 241, 241, 1);
Color lightblue = Color.fromRGBO(233, 238, 252, 1);

class AboutSub extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    AboutSubController aboutsubcontroller = Get.find();
    return Scaffold(
        backgroundColor: darkblue,
        body: 
      //  print("jjjfkehtiwnwy4ylitwuui");
        
        Column(
            children: [
              Column(children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Image.asset(
                    "assets/icons/relativity.png",
                    height: 100.h,
                    width: 100.w,
                  ),
                ),
              ]),
              Padding(
                padding: const EdgeInsets.only(top: 2),
                child: Container(
                  height: 440.h, width: 500.w, //color: white,

                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(60)),
                      color: lightblue),

                  child:
                 aboutsubcontroller.isLoading?Center(child: CircularProgressIndicator(),):
                   GetBuilder<AboutSubController>(
                    builder: (aboutsubcontroller)=>
                     Column(children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 25, horizontal: 10),
                        child: Text(" Who teach it :",
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                color: darkblue,
                                fontSize: 25.sp,
                                fontWeight: FontWeight.w400)),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 1),
                        child: Container(
                          height: 80.h,
                          width: 330.w,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                color: darkblue.withOpacity(0.5),
                  
                                spreadRadius: 1,
                  
                                blurRadius: 7,
                  
                                // offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Center(
                            child: ListTile(
                              //  subtitle: Text("hfh"),
                              leading: CircleAvatar(
                                  radius: 40,
                                  // backgroundImage: AssetImage('assets/images/pro.png'),
                                  backgroundColor: darkblue
                                  //   backgroundImage: ,
                                  ),
                              title: Text(
                                "${aboutsubcontroller.aboutsub!.teacher!.firstName} ${aboutsubcontroller.aboutsub!.teacher!.lastName}",
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    color: Color.fromARGB(255, 141, 168, 209),
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                              trailing: IconButton(
                                  onPressed: () {
                                    print("jhgsdj");
                                    // Navigator.of(context).pushReplacementNamed("book");
                                  },
                                  icon: Icon(
                                    Icons.navigate_next_sharp,
                                    size: 35,
                                  ),
                                  color: darkblue),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 28, horizontal: 10),
                        child: Text(" The number of weekly classes :",
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                color: darkblue,
                                fontSize: 25.sp,
                                fontWeight: FontWeight.w400)),
                      ),
                      Container(
                        height: 45.h,
                        width: 70.w,
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: darkblue.withOpacity(0.5),
                  
                              spreadRadius: 1,
                  
                              blurRadius: 7,
                  
                              // offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Center(
                            child: Text( "${aboutsubcontroller.aboutsub!.about!.numberOfWeeklyClasses}",
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    color: Color.fromARGB(255, 141, 168, 209),
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w500))),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 25, horizontal: 25),
                                    child: Text("Top mark :",
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            color: darkblue,
                                            fontSize: 25.sp,
                                            fontWeight: FontWeight.w400)),
                                  ),
                                  Container(
                                    height: 45.h,
                                    width: 70.w,
                                    decoration: BoxDecoration(
                                      color: white,
                                      borderRadius: BorderRadius.circular(30),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.green.withOpacity(0.5),
                  
                                          spreadRadius: 1,
                  
                                          blurRadius: 7,
                  
                                          // offset: Offset(0, 3),
                                        ),
                                      ],
                                    ),
                                    child: Center(
                                        child: Text("${aboutsubcontroller.aboutsub!.about!.topMark}",
                                            style: TextStyle(
                                                fontFamily: 'Montserrat',
                                                color: Color.fromARGB(
                                                    255, 141, 168, 209),
                                                fontSize: 20.sp,
                                                fontWeight: FontWeight.w500))),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 19),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 25, horizontal: 8),
                                    child: Text("Lower mark :",
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            color: darkblue,
                                            fontSize: 25.sp,
                                            fontWeight: FontWeight.w400)),
                                  ),
                                  Container(
                                    height: 45.h,
                                    width: 70.w,
                                    decoration: BoxDecoration(
                                      color: white,
                                      borderRadius: BorderRadius.circular(30),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color.fromARGB(255, 249, 32, 16)
                                              .withOpacity(0.5),
                  
                                          spreadRadius: 1,
                  
                                          blurRadius: 7,
                  
                                          // offset: Offset(0, 3),
                                        ),
                                      ],
                                    ),
                                    child: Center(
                                        child: Text("${aboutsubcontroller.aboutsub!.about!.lowerMark}",
                                            style: TextStyle(
                                                fontFamily: 'Montserrat',
                                                color: Color.fromARGB(
                                                    255, 141, 168, 209),
                                                fontSize: 20.sp,
                                                fontWeight: FontWeight.w500))),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ]),
                  ),
                ),
              ),
            ],
          )
        );
  }
}
