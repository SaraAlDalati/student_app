import 'package:get/get.dart';
import 'package:student_app/applink.dart';
import 'package:student_app/view/screen/profile.dart';

import '../../core/crud.dart';

class MarkSubParData {
  Crud crud;

  MarkSubParData(this.crud);

  getData() async {
    print("ssssssssssssssssssssssssssssssssssssssssssssssssssssssssss");
    var response = await crud.GetData(AppLink.marksubpar, "");
    print('afterllllllllllllllllllllllllllllllllllllllllllllllllllllll');
    return response;
  }
  
}