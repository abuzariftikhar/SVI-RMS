// To parse this JSON data, do
//
//     final login = loginFromJson(jsonString);

import 'dart:convert';

Login loginFromJson(String str) => Login.fromJson(json.decode(str));

String loginToJson(Login data) => json.encode(data.toJson());

class Login {
    Login({
        required this.code,
        required this.status,
        required this.message,
        required this.userDetail,
    });

    int code;
    String status;
    String message;
    UserDetail userDetail;

    factory Login.fromJson(Map<String, dynamic> json) => Login(
        code: json["code"],
        status: json["status"],
        message: json["message"],
        userDetail: UserDetail.fromJson(json["user_detail"]),
    );

    Map<String, dynamic> toJson() => {
        "code": code,
        "status": status,
        "message": message,
        "user_detail": userDetail.toJson(),
    };
}

class UserDetail {
    UserDetail({
        required this.id,
        required this.name,
        required this.profileImage,
        required this.emailAddress,
        required this.suspended,
        required this.fromSite,
        required this.approved,
        required this.addedByTitle,
        required this.vendorTypeId,
    });

    String id;
    String name;
    String profileImage;
    String emailAddress;
    String suspended;
    String fromSite;
    String approved;
    String addedByTitle;
    String vendorTypeId;

    factory UserDetail.fromJson(Map<String, dynamic> json) => UserDetail(
        id: json["id"],
        name: json["name"],
        profileImage: json["profile_image"],
        emailAddress: json["email_address"],
        suspended: json["suspended"],
        fromSite: json["from_site"],
        approved: json["approved"],
        addedByTitle: json["added_by_title"],
        vendorTypeId: json["vendor_type_id"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "profile_image": profileImage,
        "email_address": emailAddress,
        "suspended": suspended,
        "from_site": fromSite,
        "approved": approved,
        "added_by_title": addedByTitle,
        "vendor_type_id": vendorTypeId,
    };
}
