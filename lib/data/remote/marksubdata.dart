import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:student_app/applink.dart';
import 'package:student_app/view/screen/profile.dart';

import '../../core/crud.dart';

class MarkSubData {
  Crud crud;
final box = GetStorage();
  MarkSubData(this.crud);

  getData() async {
    print("ssssssssssssssssssssssssssssssssssssssssssssssssssssssssss");
    var response = await crud.GetData("$server/api/students/marks?course_id=${box.read("course_id")}&year=2023", "");
    print('afterllllllllllllllllllllllllllllllllllllllllllllllllllllll');
    return response;
  }
  
}

/*
class MarkSubSData {
  Crud crud;

  MarkSubSData(this.crud);

  getData() async {
    print("ssssssssssssssssssssssssssssssssssssssssssssssssssssssssss");
    var response = await crud.GetData(AppLink.marksub, "");
    print('afterllllllllllllllllllllllllllllllllllllllllllllllllllllll');
    return response;
  }
}*/