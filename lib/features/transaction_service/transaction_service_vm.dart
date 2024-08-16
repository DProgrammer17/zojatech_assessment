import 'dart:math';

import 'package:flutter/material.dart';
import 'package:zoja_tech_assessment/features/auth/user_model.dart';
import 'package:zoja_tech_assessment/core/networking/transaction_api.dart';
import 'package:zoja_tech_assessment/features/transaction_service/models/dispute_transaction_request.dart';
import 'package:zoja_tech_assessment/features/transaction_service/models/transaction_list_response.dart';
import 'package:zoja_tech_assessment/features/transaction_service/models/transaction_response.dart';
import 'package:zoja_tech_assessment/features/transaction_service/models/transfer_request.dart';
import 'package:zoja_tech_assessment/utils/assets/string_assets.dart';
import 'package:zoja_tech_assessment/utils/extensions/context_extension.dart';
import 'package:zoja_tech_assessment/utils/utility_functions/geolocation_service.dart';

class TransactionServiceVM with TransactionApi, GeolocationService {
  TransferRequest? request;
  TransactionListResponse? transactions;
  TransactionResponse? transactionResponse;
  String? bankCode;
  TextEditingController pinController = TextEditingController();
  TextEditingController beneficiaryNameController = TextEditingController();
  TextEditingController beneficiaryAccountController = TextEditingController();
  TextEditingController amountController = TextEditingController();
  TextEditingController narrationController = TextEditingController();

  Future<void> fetchTransactions({
    required BuildContext context,
    required String userId,
  }) async {
    try {
      ///Perform API Call
      await fetchTransactionsApi(userId);

      ///if success assign response to products variable
      transactions = TransactionListResponse.empty();
      if (context.mounted) {
        context.showToast(message: StringAsset.success);
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> fetchTransactionDetails({
    required BuildContext context,
    required String tranUniqueRefNo,
  }) async {
    try {
      ///Perform API Call
      await fetchTransactionsDetailsApi(tranUniqueRefNo);

      ///if success assign response to products variable
      transactionResponse = TransactionResponse();
      if (context.mounted) {
        context.showToast(message: StringAsset.success);
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> disputeTransaction({
    required BuildContext context,
    required DisputeTransactionRequest request,
  }) async {
    try {
      ///Perform API Call
      await disputeTransactionApi(request);

      ///if success call toast
      if (context.mounted) {
        context.showToast(message: StringAsset.success);
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> postTransaction({
    required BuildContext context,
    required TransferRequest request,
    required User userInfo,
  }) async {
    try {
      ///Perform API Call
      await postTransactionApi(
        TransferRequest(
          externalRefNo: StringAsset.externalTransactionRef(Random().nextDouble()),
          deviceId: StringAsset.deviceID,
          pin: pinController.text,
          sourceAccount: userInfo.accountNumber ?? '',
          senderName: userInfo.name ?? '',
          beneficiaryAccount: beneficiaryAccountController.text,
          beneficiaryName: beneficiaryNameController.text,
          beneficiaryBankCode: bankCode ?? '',
          geolocation: fetchGeolocation(),
          amount: double.parse(amountController.text),
          narration: narrationController.text,
        ),
      );

      ///if success call toast
      if (context.mounted) {
        context.showToast(message: StringAsset.success);
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
