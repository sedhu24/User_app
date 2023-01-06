import 'package:upgrade/app/controller/account_controller.dart';
import 'package:upgrade/app/controller/tab_controller.dart';
import 'package:upgrade/app/helper/router.dart';
import 'package:upgrade/app/util/toast.dart';
import 'package:get/get.dart';

class ApiChecker {
  static void checkApi(Response response) {
    if (response.statusCode == 401) {
      showToast('Session expired!'.tr);
      showToast('Session expired!'.tr);
      Get.find<TabsController>().cleanLoginCreds();
      Get.find<AccountController>().cleanData();
      Get.toNamed(AppRouter.getLogin());
    } else {
      showToast(response.statusText.toString().tr);
    }
  }
}
