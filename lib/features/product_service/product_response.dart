class ProductResponse{
  final String? id;
  final String? description;
  final String? name;
  final String? store;
  final String? productType;
  final DateTime? createdDate;
  final double? costPrice;
  final double? sellingPrice;

  const ProductResponse({
     this.id,
     this.description,
     this.name,
     this.store,
     this.productType,
     this.createdDate,
     this.costPrice,
     this.sellingPrice,
  });

  factory ProductResponse.fromJson(Map<String, dynamic> json) => ProductResponse(
    id: json["id"],
    description: json["description"],
    name: json["name"],
    store: json["store"],
    productType: json["productType"],
    costPrice: json["costPrice"],
    sellingPrice: json["sellingPrice"],
    createdDate: DateTime.tryParse(json["createdDate"] ?? ''),
  );
}