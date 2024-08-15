class DisputeTransactionRequest{
  final String? tranUniqueRefNo;
  final String? description;

  const DisputeTransactionRequest({
    this.tranUniqueRefNo,
    this.description,
  });

  Map<String, dynamic> toJson() => {
    "tranUniqueRefNo": tranUniqueRefNo,
    "description": description,
  };

}