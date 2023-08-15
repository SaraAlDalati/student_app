import 'package:get/get.dart';
import 'package:student_app/data/remote/marksdata.dart';
import 'package:student_app/data/remote/yeardata.dart';
import 'package:student_app/model/marksmodel.dart';
import 'package:student_app/model/yearmodel.dart';

class MarksController extends GetxController {
  var marksList = <MarksModel>[];
  var yearList = <YearModel>[];
  String schoolyear = 'School year';
  List<String> schoolyearItems = ['School year'];

  late bool isLoading = true;
  MarksData marksData = MarksData(Get.find());
  YearData yearData = YearData(Get.find());

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
      var response = await marksData.getData();
      print(
          "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
      isLoading = false;
      if (response["status"]) {
        for (var data in response["totals"]) {
          marksList.add(MarksModel.fromJson(data));
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
      yearList.clear();
      schoolyearItems.clear();
      print("cccccccccccccccccccccccccccccccccccccccc");
      var response = await yearData.getData();
      print(
          "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
      isLoading = false;
      if (response["status"]) {
        for (var data in response['data']) {
          yearList.add(YearModel.fromJson(data));
          print(data);
        }
        for (var data in yearList) {
          schoolyearItems.add(data.year!);
          print(data);
        }
      }

      if (yearList.isNotEmpty) {
        schoolyear = schoolyearItems[0];
      }
      update();
    } catch (e) {
      print(e);
    }
  }

  void onDropdownChangedSchoolyear(String value) {
    if (schoolyear == value) return;
    schoolyear = value;
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

 
