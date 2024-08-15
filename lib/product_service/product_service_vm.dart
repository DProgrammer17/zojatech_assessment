import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zoja_tech_assessment/core/networking/product_api.dart';
import 'package:zoja_tech_assessment/product_service/product_request.dart';
import 'package:zoja_tech_assessment/product_service/product_response.dart';
import 'package:zoja_tech_assessment/utils/assets/string_assets.dart';
import 'package:zoja_tech_assessment/utils/extensions/context_extension.dart';

class ProductServiceVM with ProductApi {
  List<ProductResponse>? products;
  ProductResponse? productResponse;

  Future<void> fetchProducts({
    required BuildContext context,
    required String userId,
  }) async {
    try {
      ///Perform API Call
      await fetchProductsApi(userId);

      ///if success assign response to products variable
      products = [];
      if(context.mounted){
        context.showToast(message: StringAsset.success);
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> fetchProductDetails({
    required BuildContext context,
    required String productID,
  }) async {
    try {
      ///Perform API Call
      await productDetailsApi(productID);

      ///if success assign response to productResponse variable
      productResponse = const ProductResponse();
      if(context.mounted){
        context.showToast(message: StringAsset.success);
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> addProduct({
    required BuildContext context,
    required String userId,
    required ProductRequest request,
  }) async {
    try {
      ///Perform API Call
      await addProductApi(userId, request);

      ///if success assign response to productResponse variable
      productResponse = const ProductResponse();
      if(context.mounted){
        context.showToast(message: StringAsset.success);
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> updateProduct({
    required BuildContext context,
    required ProductRequest request,
  }) async {
    try {
      ///Perform API Call
      await updateProductApi(request);

      ///if success assign response to productResponse variable
      productResponse = const ProductResponse();
      if(context.mounted){
        context.showToast(message: StringAsset.success);
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> deleteProduct({
    required BuildContext context,
    required String productID,
  }) async {
    try {
      ///Perform API Call
      await deleteProductApi(productID);

      ///if success call toast
      if(context.mounted){
        context.showToast(message: StringAsset.success);
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
