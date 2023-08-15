import 'package:student_app/applink.dart';
import '../../core/crud.dart';

class ChildData {
  Crud crud;

  ChildData(this.crud);

  getData() async {
    print("ssssssssssssssssssssssssssssssssssssssssssssssssssssssssss");
    var response = await crud.GetData(AppLink.child, "");
    print('afterllllllllllllllllllllllllllllllllllllllllllllllllllllll');
    return response;
  }
}