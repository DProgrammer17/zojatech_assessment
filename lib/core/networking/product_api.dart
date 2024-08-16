import 'package:zoja_tech_assessment/features/product_service/product_request.dart';

mixin ProductApi{

  ///FetchProducts
  Future<void> fetchProductsApi(String userId) async {
    /// Call FetchProducts API
  }

  ///FetchProductDetails
  Future<void> productDetailsApi(String productID) async {
    /// Call FetchProductDetails API
  }

  ///AddProduct
  Future<void> addProductApi(String userId, ProductRequest request) async {
    /// Call AddProduct API
  }

  ///UpdateProduct
  Future<void> updateProductApi(ProductRequest request) async {
    /// Call UpdateProduct API
  }

  ///DeleteProduct
  Future<void> deleteProductApi(String productID) async {
    /// Call DeleteProduct API
  }
}