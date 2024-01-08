import 'dart:convert';
import 'dart:io';
import 'package:practical_test/app/data/apis/api_methods/http_methods.dart';

import 'package:http/http.dart' as http;

import '../api_constants/api_url_constants.dart';
import '../api_model/ProductListModel.dart';

class ApiMethods{
  static Future<List<Products>?> mainCategories({
    void Function(int)? checkResponse,
    Map<String, dynamic>? bodyParams,
  }) async {
    List<Products>? mainCategoriesModel;
    http.Response? response = await MyHttp.getMethod(
      url: ApiUrlConstants.endPointOfProductList,
      checkResponse: checkResponse,
    );
    if (response != null) {
      final data = ProductList.fromJson(jsonDecode(response.body)) ;
      mainCategoriesModel=data.products;
      return mainCategoriesModel;
    }
    return null;
  }
  // static Future<http.Response?> doctorsUpdateDoctorProfile({
  //   void Function(int)? checkResponse,
  //   required Map<String, dynamic> bodyParams,
  //   Map<String, File>? imageMap,
  // }) async {
  //   http.Response? response = await MyHttp.multipart(
  //     url: ApiUrlConstants.endPointOfDoctorsUpdateDoctorProfile,
  //     imageMap: imageMap,
  //     checkResponse: checkResponse,
  //     bodyParams: bodyParams,
  //   );
  //   if (response != null) {
  //     return response;
  //   }
  //   return null;
  // }
  //
  //
  //
  // static Future<GetPeaceSubCategoryModel?> getPeaceSubCategory({
  //   void Function(int)? checkResponse,
  //   required Map<String, dynamic> bodyParams,
  // }) async {
  //   GetPeaceSubCategoryModel getPeaceSubCategoryModel;
  //   http.Response? response = await MyHttp.getMethodParams(
  //     baseUri: ApiUrlConstants.baseUrlForGetMethodParams,
  //     endPointUri: ApiUrlConstants.endPointOfGetPeaceSubCategory,
  //     checkResponse: checkResponse,
  //     queryParameters: bodyParams,
  //   );
  //   if (response != null) {
  //     getPeaceSubCategoryModel =
  //         GetPeaceSubCategoryModel.fromJson(jsonDecode(response.body));
  //     return getPeaceSubCategoryModel;
  //   }
  //   return null;
  // }
  //
  //
  // static Future<GetFertilityEducationBannerModel?> getFertilityEducationBanner({
  //   void Function(int)? checkResponse,
  //   Map<String, dynamic>? bodyParams,
  // }) async {
  //   GetFertilityEducationBannerModel getFertilityEducationBannerModel;
  //   http.Response? response = await MyHttp.getMethod(
  //     url: ApiUrlConstants.endPointOfGetFertilityEducationBanner,
  //     checkResponse: checkResponse,
  //   );
  //   if (response != null) {
  //     getFertilityEducationBannerModel =
  //         GetFertilityEducationBannerModel.fromJson(jsonDecode(response.body));
  //     return getFertilityEducationBannerModel;
  //   }
  //   return null;
  // }
  //
  // static Future<UserModel?> login({
  //   void Function(int)? checkResponse,
  //   Map<String, dynamic>? bodyParams,
  // }) async {
  //   UserModel userModel;
  //   http.Response? response = await MyHttp.postMethod(
  //     bodyParams: bodyParams,
  //     url: ApiUrlConstants.endPointOfLogin,
  //     checkResponse: checkResponse,
  //   );
  //   if (response != null) {
  //     userModel = UserModel.fromJson(jsonDecode(response.body));
  //     return userModel;
  //   }
  //   return null;
  // }
  //
  // static Future<UserModel?> register({
  //   void Function(int)? checkResponse,
  //   Map<String, dynamic>? bodyParams,
  // }) async {
  //   UserModel? userModel;
  //   http.Response? response = await MyHttp.postMethod(
  //     bodyParams: bodyParams,
  //     url: ApiUrlConstants.endPointOfRegister,
  //     checkResponse: checkResponse,
  //   );
  //   if (response != null) {
  //     userModel = UserModel.fromJson(jsonDecode(response.body));
  //     return userModel;
  //   }
  //   return null;
  // }
}
