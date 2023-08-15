import 'package:student_app/applink.dart';
import '../../core/crud.dart';

class ExamsData {
  Crud crud;

  ExamsData(this.crud);

  getData() async {
    print("ssssssssssssssssssssssssssssssssssssssssssssssssssssssssss");
    var response = await crud.GetData(AppLink.exams, "");
    print('afterllllllllllllllllllllllllllllllllllllllllllllllllllllll');
    return response;
  }
}