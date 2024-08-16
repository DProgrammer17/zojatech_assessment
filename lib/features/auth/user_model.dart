class User{
  final String? id;
  final String? name;
  final String? phone;
  final String? address;
  final String? email;
  final String? password;
  final String? accountNumber;

  const User({
     this.id,
     this.email,
     this.password,
    this.name,
    this.phone,
    this.address,
    this.accountNumber,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
    name: json["name"],
    phone: json["phone"],
    address: json["address"],
    email: json["email"],
    password: json["password"],
    accountNumber: json["accountNumber"],
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "email": email,
    "password": password,
    "phone": phone,
    "address": address,
    "accountNumber": accountNumber,
  };
}