import 'package:get/get.dart';

import '../../../data/constants/icons_constant.dart';
import '../../../routes/app_pages.dart';

class ProfileController extends GetxController {
  //TODO: Implement ProfileController

  final count = 0.obs;

  List listOfListTileImages = [
    IconConstants.icHealthRecorde,
    IconConstants.icMyProfile,
    IconConstants.icChangePassword,
    IconConstants.icFaqs,
    IconConstants.icRateUs,
  ];

  List listOfListTileTitles = [
    'Health Recorde',
    'My Profile',
    'Change Password',
    'FAQs',
    'Rate Us',
  ];

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  clickOnListTile({required int index}) {
    switch (index) {
      case 0:
        Get.toNamed(Routes.HEALTH_RECORDE);
        break;
      case 1:
        Get.toNamed(Routes.MY_PROFILE);
        break;
      case 2:
        Get.toNamed(Routes.CHANGE_PASSWORD);
        break;      case 4:
        Get.toNamed(Routes.RATE_US);
        break;
    }
  }
}
