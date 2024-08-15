import 'package:zoja_tech_assessment/transaction_service/models/dispute_transaction_request.dart';
import 'package:zoja_tech_assessment/transaction_service/models/transfer_request.dart';

mixin TransactionApi{

  ///FetchTransactions
  Future<void> fetchTransactionsApi(String userId) async {
    /// Call FetchTransactions API
  }

  ///FetchTransactionsDetails
  Future<void> fetchTransactionsDetailsApi(String tranUniqueRefNo) async {
    /// Call FetchTransactionsDetails API
  }

  ///DisputeTransaction
  Future<void> disputeTransactionApi(DisputeTransactionRequest request) async {
    /// Call DisputeTransaction API
  }

  ///PostTransaction
  Future<void> postTransactionApi(TransferRequest request) async {
    /// Call PostTransaction API
  }

}