import 'package:get/get.dart';

import 'package:get/get.dart';

import 'package:student_app/parent/screen/report.dart';

import '../model/programmodel.dart';
import '../core/ResApiStudent.dart';



class HomePageController extends GetxController {
  // List scheduleList = <ScheduleModel>[];
  bool isLoading = true;
  ProgramModel schedule = ProgramModel();

  // final Rx<HomePageController?> schedule = Rx<HomePageController?>(null);
  // ScheduleData scheduleData = ScheduleData(Get.find());
  @override
  void onInit() async {
    await fetchDaysData();
    super.onInit();
  }

  fetchDaysData() async {
    isLoading = true;
    update();

    schedule = await RestAPIGet.getprogram();
    

    isLoading = false;
    update();
  }

  
}