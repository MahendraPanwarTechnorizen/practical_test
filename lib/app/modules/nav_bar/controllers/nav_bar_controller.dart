
import 'package:get/get.dart';

import '../../cart/views/cart_view.dart';
import '../../home/views/home_view.dart';
import '../../profile/views/profile_view.dart';
import '../../search/views/search_view.dart';

final selectedIndex = 0.obs;

class NavBarController extends GetxController {
  final count = 0.obs;

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

  body() {
    switch (selectedIndex.value) {
      case 0:
        return const HomeView();
      case 1:
        return const SearchView();
      case 2:
        return const CartView();
      case 3:
        return const ProfileView();
    }
  }
}
