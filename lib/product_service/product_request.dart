class ProductRequest{
  final String? id;
  final String? description;
  final String? name;
  final String? store;
  final String? productType;
  final double? costPrice;
  final double? sellingPrice;

  const ProductRequest({
    this.id,
    this.description,
    this.name,
    this.store,
    this.productType,
    this.costPrice,
    this.sellingPrice,
  });
}