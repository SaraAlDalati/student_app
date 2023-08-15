import 'package:get/get.dart';
import 'package:student_app/data/remote/marksdata.dart';
import 'package:student_app/data/remote/yeardata.dart';
import 'package:student_app/model/marksmodel.dart';
import 'package:student_app/model/yearmodel.dart';

import '../data/markspardata.dart';
import '../data/yearpardata.dart';
import '../model/marksparmodel.dart';
import '../model/yearparmodal.dart';

class MarksParController extends GetxController {
  var marksparList = <MarksParModel>[];
  var yearparList = <YearParModel>[];
  String schoolyearpar = 'School year';
  List<String> schoolyearparItems = ['School year'];

  late bool isLoading = true;
  MarksParData marksparData = MarksParData(Get.find());
  YearParData yearparData = YearParData(Get.find());

  @override
  void onInit() async {
    await getyearData();
    getData();

    super.onInit();
  }

  void getData() async {
    try {
      isLoading = true;
      update();

      print("cccccccccccccccccccccccccccccccccccccccc");
      var response = await marksparData.getData();
      print(
          "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
      isLoading = false;
      if (response["status"]) {
        for (var data in response["totals"]) {
          marksparList.add(MarksParModel.fromJson(data));
        }
      }
    } catch (e) {
      print(e);
    }
  }

  getyearData() async {
    try {
      isLoading = true;
      update();

      print("cccccccccccccccccccccccccccccccccccccccc");
      var response = await yearparData.getData();
      print(
          "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
      isLoading = false;
      if (response["status"]) {
        for (var data in response['data']) {
          yearparList.add(YearParModel.fromJson(data));
          print(data);
        }
        for (var data in yearparList) {
          schoolyearparItems.add(data.year!);
         // print(data);
        }
      }
    } catch (e) {
      print(e);
    }
  }

  void onDropdownChangedSchoolyearPar(String value) {
    if (schoolyearpar == value) return;
    schoolyearpar = value;
    getData();
    update();
  }
}
  /* getyearData() async {
    yearList = await yearData.getData();
   // print(yearList);
    if (yearList.isEmpty) {
      schoolyearItems = ["it's Empty"];
      schoolyear = schoolyearItems[0];
      update();
      return;
    }
    schoolyearItems.clear();
    for (var element in yearList) {
      schoolyearItems.add(element.year!);
    }
    print(schoolyear);
    schoolyear = schoolyearItems[0];
    update();
  }

  void onDropdownChangedSchoolyear(String value) {
    if (schoolyear == value) return;
    schoolyear = value;
    getData();
    update();
  }
}*/

/*
  void getyearData() async {
    try {
     
      isLoading = true;
      update();
      
      var yearlist =  yearData.getData();
       print(yearList);
      
      isLoading = false;
      if (yearList.isEmpty) {
        schoolyearItems = ['School year'];
        schoolyear = schoolyearItems[0];
        update();
        return;
      }
      for (var data in yearlist) {
        //  yearList.add(YearModel.fromJson(data));
        schoolyearItems.add(yearlist.year!);
      }
      schoolyear = schoolyearItems[0];
      update();
      print("data");
    } catch (e) {
      print(e);
    }
  }*/

 
