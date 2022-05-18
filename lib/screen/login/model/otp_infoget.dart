// To parse this JSON data, do
//
//     final userRegistationInfo = userRegistationInfoFromMap(jsonString);

// ignore_for_file: camel_case_types

import 'dart:convert';

Otp_Info otp(String str) => Otp_Info.fromMap(json.decode(str));

String otpstring(Otp_Info data) => json.encode(data.toMap());

class Otp_Info {
    Otp_Info({
        required this.status,
        required this.message,
        required this.newUser,
        required this.captainId,
    });

    String status;
    String message;
    bool newUser;
    int captainId;

    factory Otp_Info.fromMap(Map<String, dynamic> json) => Otp_Info(
        status: json["status"],
        message: json["message"],
        newUser: json["new_user"],
        captainId: json["captain_id"],
    );

    Map<String, dynamic> toMap() => {
        "status": status,
        "message": message,
        "new_user": newUser,
        "captain_id": captainId,
    };
}
