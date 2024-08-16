import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:zoja_tech_assessment/transaction_service/models/transaction_list_response.dart';
import 'package:zoja_tech_assessment/transaction_service/models/transaction_response.dart';
import 'package:zoja_tech_assessment/utils/assets/string_assets.dart';
import 'package:zoja_tech_assessment/utils/extensions/context_extension.dart';

class StoreTransactionRequest {
  List<TransactionResponse>? transactionList;
  TransactionResponse? transactionDetail;

  /// Create a CollectionReference called users that references the firestore collection
  CollectionReference transactions =
      FirebaseFirestore.instance.collection(StringAsset.transactions);

  Future<void> addTransactions(BuildContext context, String userId) =>
      transactions
          .doc(userId)
          .set(TransactionResponse().toJson())
          .then((value) => context.showToast(
              message: StringAsset.transactionUploadedSuccessfully))
          .catchError((error) => context.showToast(
                message: StringAsset.errorOccurred,
                backgroundColor: Colors.red,
              ));

  // Future<void> allTransactions()async{
  //   final snapshot = await transactions.get();
  //   transactionList = snapshot.docs.map((e) => TransactionResponse.fromSnapshot(e.)).toList();
  // }

  // Future<void> getAllTransactions(
  //         BuildContext context, String userId) =>
  //     transactions
  //         .doc(userId)
  //         .get()
  //         .then(
  //           (DocumentSnapshot snapshot) => checkSnapshotState(snapshot)
  //               ? () {
  //                   transactionList = TransactionListResponse.fromJson(
  //                       snapshot.data() as Map<String, dynamic>);
  //                   context.showToast(
  //                       message: StringAsset.transactionsRetrievedSuccessfully);
  //                 }
  //               : context.showToast(
  //                   message: StringAsset.errorOccurred,
  //                   backgroundColor: Colors.red,
  //                 ),
  //         )
  //         .catchError((error) => context.showToast(
  //               message: StringAsset.errorOccurred,
  //               backgroundColor: Colors.red,
  //             ));

  Future<void> getTransactionDetail(
          BuildContext context, String transactionID) =>
      transactions
          .doc(transactionID)
          .get()
          .then(
            (DocumentSnapshot snapshot) => checkSnapshotState(snapshot)
                ? () {
                    transactionDetail = TransactionResponse.fromJson(
                        snapshot.data() as Map<String, dynamic>);
                    context.showToast(
                        message: StringAsset.transactionRetrievedSuccessfully);
                  }
                : context.showToast(
                    message: StringAsset.errorOccurred,
                    backgroundColor: Colors.red,
                  ),
          )
          .catchError((error) => context.showToast(
                message: StringAsset.errorOccurred,
                backgroundColor: Colors.red,
              ));

  Future<void> deleteTransaction(BuildContext context, String transactionID) =>
      transactions
          .doc(transactionID)
          .delete()
          .then((value) => context.showToast(
              message: StringAsset.transactionDeletedSuccessfully))
          .catchError(
            (error) => context.showToast(
              message: StringAsset.errorOccurred,
              backgroundColor: Colors.red,
            ),
          );

  bool checkSnapshotState(DocumentSnapshot snapshot) {
    if (snapshot.exists) {
      return true;
    }
    return false;
  }
}
