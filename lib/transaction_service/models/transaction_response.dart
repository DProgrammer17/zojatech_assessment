class TransactionResponse{
  final String? refNo;
  final String? paymentRef;
  final String? tranCode;
  final String? tranType;
  final String? tranUniqueRefNo;
  final String? tranDesc;
  final double? amount;
  final String? currencyCode;
  final String? narration;
  final DateTime? transactionDate;
  final String? transactionStatus;
  final String? beneficiaryName;
  final String? beneficiaryAccountNumber;
  final String? beneficiaryBank;
  final String? billerName;
  final String? senderAccountNumber;
  final String? senderName;
  final String? sessionId;
  final String? crDr;

  TransactionResponse({
    this.refNo,
    this.paymentRef,
    this.tranCode,
    this.tranType,
    this.tranUniqueRefNo,
    this.tranDesc,
    this.amount,
    this.currencyCode,
    this.narration,
    this.transactionDate,
    this.transactionStatus,
    this.beneficiaryName,
    this.beneficiaryAccountNumber,
    this.senderAccountNumber,
    this.beneficiaryBank,
    this.billerName,
    this.senderName,
    this.sessionId,
    this.crDr,
  });

  factory TransactionResponse.fromJson(Map<String, dynamic> json) => TransactionResponse(
    refNo: json["refNo"],
    paymentRef: json["paymentRef"],
    tranCode: json["tranCode"],
    tranType: json["tranType"],
    tranUniqueRefNo: json["tranUniqRefNo"],
    tranDesc: json["tranDesc"],
    amount: (json['amount'] as double?) ?? 0.0,
    currencyCode: json["currencyCode"],
    narration: json["narration"],
    transactionDate: DateTime.tryParse(json["transactionDate"] ?? ''),
    transactionStatus: json["transactionStatus"],
    beneficiaryName: json["beneficiaryName"],
    beneficiaryAccountNumber: json["beneficiaryAccountNumber"],
    beneficiaryBank: json["beneficiaryBank"],
    billerName: json["billerName"],
    senderAccountNumber: json["senderAccountNumber"],
    senderName: json["senderName"],
    sessionId: json["sessionId"],
    crDr: json["crDr"],
  );
}