import 'package:get/get.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:student_app/core/ResApiParent.dart';
import 'package:student_app/parent/data/childdata.dart';
import 'package:student_app/parent/model/childmodel.dart';

import 'package:student_app/parent/screen/report.dart';

import '../model/programparmodel.dart';

class HomePageParController extends GetxController {
  bool isLoading = true;
  ProgramParModel schedule = ProgramParModel();

  List<ChildModel> childList = [];
  String child = 'Select Student';
  List<String> childItems = ['Select Student'];
  ChildData childData = ChildData(Get.find());
  final box = GetStorage();
  @override
  void onInit() async {
    await getchildData();
    await fetchDaysData();
    super.onInit();
  }

  getchildData() async {
    try {
      isLoading = true;
      update();
      childItems.clear();
      childList.clear();
      print("cccccccccccccccccccccccccccccccccccccccc");
      var response = await childData.getData();
      print(
          "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
      isLoading = false;
      if (response["status"]) {
        for (var data in response["children"]) {
          childList.add(ChildModel.fromJson(data));
        }
        // print(childList[0].address);
        for (var data in childList) {
          childItems.add(data.firstName!);
          print(childItems);
          // childItems.removeAt(childItems.length - 1);
        }
      }
      if (childList.isNotEmpty) {
        child = childItems[0];
      }
      update();
    } catch (e) {
      print(e);
    }
  }

// box.write(key, value)
  void onDropdownChangedChild(String value) async {
    if (child == value) return;
    child = value;
    await fetchDaysData();
    update();
  }

  fetchDaysData() async {
    isLoading = true;
    update();

    ChildModel childModel = childList.firstWhere(
      (element) => element.firstName == child,
      orElse: () => ChildModel(),
    );
    box.write('childid', childModel.id);

    schedule = await RestAPIGetPar.getprogram('${childModel.id}');
    // print(schedule.sunday![0].day);
    isLoading = false;
    update();
  }
}
