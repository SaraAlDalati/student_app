import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:student_app/applink.dart';
import 'package:student_app/core/storgecontroller.dart';
import '../../core/crud.dart';
import '';

class AboutsubData {
  final box = GetStorage();
  
  Crud crud;

  AboutsubData(this.crud);

  getData() async {
    print("ssssssssssssssssssssssssssssssssssssssssssssssssssssssssss");
    print(box.read("course_id"));
     print("zeinaaaaaaaaaaaaaaaaaaaaaaaaaaa");
    var response = await crud.GetData(
        "http://192.168.43.8:8000/api/students/courses/about?course_id=${box.read("course_id")}",  "");
    print("zeinaaaaaaaaaaaaaaaaaaaaaaaaaaa");
    print('afterllllllllllllllllllllllllllllllllllllllllllllllllllllll');
    return response;
  }
}
