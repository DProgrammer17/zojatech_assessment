import 'package:zoja_tech_assessment/transaction_service/models/transaction_response.dart';

class TransactionListResponse{
  String responseCode;
  String responseMessage;
  List<TransactionResponse>? data;
  int pageIndex;
  int pageSize;
  int totalPages;
  bool hasNextPage;
  bool hasPreviousPage;
  int totalContent;

  TransactionListResponse({
    required this.responseCode,
    required this.responseMessage,
    this.data,
    required this.pageIndex,
    required this.pageSize,
    required this.totalPages,
    required this.hasNextPage,
    required this.hasPreviousPage,
    required this.totalContent,
  });

  TransactionListResponse.empty()
      : responseCode = '',
        responseMessage = '',
        data = null,
        pageIndex = 0,
        pageSize = 0,
        totalPages = 0,
        hasNextPage = false,
        hasPreviousPage = false,
        totalContent = 0;


  factory TransactionListResponse.fromJson(Map<String, dynamic> json) {
    return TransactionListResponse(
      responseCode: json["responseCode"] as String,
      responseMessage: json["responseMessage"] as String,
      data: json["data"] == null
          ? []
          : List<TransactionResponse>.from(
          json["data"].map((x) => TransactionResponse.fromJson(x))),
      pageIndex: json['pageIndex'] as int,
      pageSize: json['pageSize'] as int,
      totalPages: json['totalPages'] as int,
      hasNextPage: json['hasNextPage'] as bool,
      hasPreviousPage: json['hasPreviousPage'] as bool,
      totalContent: json['totalContent'] as int,
    );
  }

}