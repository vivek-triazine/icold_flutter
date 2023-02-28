class LoginResponseModel {
  LoginResponseModel({
    this.status,
    this.msg,
    this.data,
  });

  int? status;
  String? msg;
  Data? data;

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) => LoginResponseModel(
    status: json["status"],
    msg: json["msg"],
    data: json["data"] == null ? null : Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "msg": msg,
    "data": data?.toJson(),
  };
}

class Data {
  Data({
    this.token,
    this.firstName,
    this.lastName,
    this.email,
    this.userType,
  });

  String? token;
  String? firstName;
  String? lastName;
  String? email;
  String? userType;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    token: json["token"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    email: json["email"],
    userType: json["user_type"],
  );

  Map<String, dynamic> toJson() => {
    "token": token,
    "first_name": firstName,
    "last_name": lastName,
    "email": email,
    "user_type": userType,
  };
}
