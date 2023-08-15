import 'package:get_storage/get_storage.dart';
import 'package:student_app/applink.dart';
import '../../core/crud.dart';

class AssignData {
  Crud crud;

  AssignData(this.crud);
  final box = GetStorage();
  getData() async {
    print("ssssssssssssssssssssssssssssssssssssssssssssssssssssssssss");
    var response = await crud.GetData(
        "$server/api/students/assignments?course_id=${box.read("course_id")}",
        "");
    print('afterllllllllllllllllllllllllllllllllllllllllllllllllllllll');
    return response;
  }
}
