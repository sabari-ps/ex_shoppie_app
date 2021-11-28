import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class StorageController extends GetxController {
  GetStorage storage = GetStorage();

  @override
  void onInit() {
    initStorage();
    super.onInit();
  }

  Future<void> initStorage() async {
    await GetStorage.init();
  }
}
