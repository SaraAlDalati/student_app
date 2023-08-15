import 'package:student_app/applink.dart';
import '../../core/crud.dart';

class YearParData {
  Crud crud;

  YearParData(this.crud);

  getData() async {
    print("ssssssssssssssssssssssssssssssssssssssssssssssssssssssssss");
    var response = await crud.GetData(AppLink.yearpar, "");
    print('afterllllllllllllllllllllllllllllllllllllllllllllllllllllll');
    return response;
  }
}