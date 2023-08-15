import 'package:student_app/applink.dart';
import '../../core/crud.dart';

class AssignParData {
  Crud crud;

  AssignParData(this.crud);

  getData() async {
    print("ssssssssssssssssssssssssssssssssssssssssssssssssssssssssss");
    var response = await crud.GetData(AppLink.assignpar, "");
    print('afterllllllllllllllllllllllllllllllllllllllllllllllllllllll');
    return response;
  }
}