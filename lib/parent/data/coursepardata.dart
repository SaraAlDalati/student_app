import 'package:get_storage/get_storage.dart';
import 'package:student_app/applink.dart';
import '../../core/crud.dart';

class CourseParData {
  Crud crud;
  final box = GetStorage();
  CourseParData(this.crud);

  getData() async {
    print("ssssssssssssssssssssssssssssssssssssssssssssssssssssssssss");
    var response =
        await crud.GetData("$server/api/guardians/courses?student_id=${box.read("childid")}", "");
    print('afterllllllllllllllllllllllllllllllllllllllllllllllllllllll');
    return response;
  }
}
