import 'package:zoja_tech_assessment/features/product_service/product_response.dart';

class GetProductsResponse {
  List<ProductResponse>? products;

  GetProductsResponse({
    this.products,
  });

  factory GetProductsResponse.fromJson(Map<String, dynamic> json) =>
      GetProductsResponse(
        products: json["products"] == null
            ? []
            : List<ProductResponse>.from(
                json["data"].map((x) => ProductResponse.fromJson(x))),
      );
}
