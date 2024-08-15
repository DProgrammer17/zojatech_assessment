class TransferRequest{
  final String externalRefNo;
  final String deviceId;
  final String pin;
  final String sourceAccount;
  final String? tranCode;
  final String senderName;
  final String beneficiaryAccount;
  final String beneficiaryName;
  final String beneficiaryBankCode;
  final String geolocation;
  final double amount;
  final double? charge;
  final String? currencyCode;
  final String narration;
  final String? paymentMethod;
  final String? userId;
  final bool? saveBeneficiary;

  TransferRequest({
    required this.externalRefNo,
    required this.deviceId,
    required this.pin,
    required this.sourceAccount,
    required this.senderName,
    required this.beneficiaryAccount,
    required this.beneficiaryName,
    required this.beneficiaryBankCode,
    required this.geolocation,
    required this.amount,
    this.tranCode,
    this.charge,
    this.currencyCode,
    required this.narration,
    this.paymentMethod,
    this.userId,
    this.saveBeneficiary,
  });

  Map<String, dynamic> toJson() => {
    "externalRefNo": externalRefNo,
    "deviceId": deviceId,
    "sourceAccount": sourceAccount,
    "tranCode": 'TRANSFER',
    "senderName": senderName,
    "beneficiaryAccount": beneficiaryAccount,
    "beneficiaryName": beneficiaryName,
    "beneficiaryBankCode": beneficiaryBankCode,
    "geolocation": geolocation,
    "amount": amount,
    "charge": 0,
    "currencyCode": 'NGN',
    "narration": narration,
    "userId": userId,
    "saveBeneficiary": saveBeneficiary ?? false,
  };
}