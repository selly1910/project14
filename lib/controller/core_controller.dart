import 'dart:developer';

import 'package:get/get.dart';

import 'package:get_storage/get_storage.dart';
import 'package:project14/models/user.dart';
import 'package:project14/utils/storage_keys.dart';
import 'package:project14/views/auth/login_screen.dart';

class CoreController extends GetxController {
  Rx<User?> currentUser = Rxn<User>();

  RxString userToken = "".obs;

  @override
  void onInit() async {
    await loadCurrentUser();
    super.onInit();
  }

  Future<void> loadCurrentUser() async {
    currentUser.value = StorageHelper.getUser();
    userToken.value = StorageHelper.getToken();
    log("current user----------------------- ${currentUser.value?.email}-");
    log("current user token----------------------- ${userToken.value}-");

    // accessToken.value = StorageHelper.getToken();
  }

  bool isUserLoggedIn() {
    return currentUser.value != null;
  }

  void logOut() async {
    final box = GetStorage();
    // await box.write(StorageKeys.ACCESS_TOKEN, null);
    await box.write(StorageKeys.USER, null);
    loadCurrentUser();
    Get.offAll(LogInScreen);
  }
}
