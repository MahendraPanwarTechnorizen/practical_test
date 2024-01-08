import 'package:get/get.dart';
import 'package:practical_test/app/data/apis/api_methods/api_methods.dart';

import '../../../data/SqliteDb/todo_db.dart';
import '../../../data/apis/api_model/ProductListModel.dart';
import '../../../data/constants/icons_constant.dart';
import '../../../routes/app_pages.dart';

class HomeController extends GetxController {
  final count = 0.obs;
  final inAsyncCall=false.obs;

  List listOfReproductive = [
    'Health Assessment',
    'Cycle Tracking',
    'Ecommerce',
    'Lifestyle optimization',
    'Nutritional guidance',
    'Fertility Education',
    'Supportive community',
    'Expert Consultation',
  ];

  List listOfReproductiveImages = [
    IconConstants.icHealthAssessment,
    IconConstants.icCycleTracking,
    IconConstants.icEcommerce,
    IconConstants.icLifeStyleOptimization,
    IconConstants.icNutritionalGuidance,
    IconConstants.icFertilityEducation,
    IconConstants.icSupportiveCommunity,
    IconConstants.icExpertConsultation,
  ];
  Future<List<Products>?>?productsList;
  final todoDB=TodoDB();
  void fetchTodos(){

    // productsList=todoDB.fetchAll();
  increment();
  }

   getProductList()async{
     // productsList = await ApiMethods.mainCategories();
   }
  @override
  void onInit() {
    super.onInit();
    inAsyncCall.value=true;
    getProductList();
    inAsyncCall.value=false;

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

  clickOnGetStartedButton() {}

  clickOnListTile({required int index}) {
    switch (index) {
      case 0:
        Get.toNamed(Routes.HEALTH_ASSESSMENT);
        break;
      case 1:
        Get.toNamed(Routes.HEALTH_ASSESSMENT);
        break;
      case 4:
        Get.toNamed(Routes.NUTRITIONAL_GUIDANCE);
        break;
      case 3:
        Get.toNamed(Routes.LIFESTYLE_OPTIMISATION);
        break;
    }
  }
}
