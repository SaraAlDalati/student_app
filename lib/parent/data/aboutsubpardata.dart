import 'package:student_app/applink.dart';
import '../../core/crud.dart';

class AboutsubParData {
  Crud crud;

  AboutsubParData(this.crud);

  getData() async {
    print("ssssssssssssssssssssssssssssssssssssssssssssssssssssssssss");
    var response = await crud.GetData(AppLink.aboutsubpar, "");
    print('afterllllllllllllllllllllllllllllllllllllllllllllllllllllll');
    return response;
  }
}
