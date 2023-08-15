import 'package:student_app/applink.dart';
import '../../core/crud.dart';

class ExamsParData {
  Crud crud;

  ExamsParData(this.crud);

  getData() async {
    print("ssssssssssssssssssssssssssssssssssssssssssssssssssssssssss");
    var response = await crud.GetData(AppLink.examspar, "");
    print('afterllllllllllllllllllllllllllllllllllllllllllllllllllllll');
    return response;
  }
}