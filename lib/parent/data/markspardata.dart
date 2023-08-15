import 'package:student_app/applink.dart';
import '../../core/crud.dart';

class MarksParData {
  Crud crud;

  MarksParData(this.crud);

  getData() async {
    print("ssssssssssssssssssssssssssssssssssssssssssssssssssssssssss");
    var response = await crud.GetData(AppLink.markspar, "");
    print('afterllllllllllllllllllllllllllllllllllllllllllllllllllllll');
    return response;
  }
}
