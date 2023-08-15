import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get_storage/get_storage.dart';

class StorageController extends GetxController {
  final box = GetStorage();


  void storage(String key,var val) => box.write(key, val);

  reade(String key) => box.read(key);
  @override
  void onInit() {
    super.onInit();
  }


}