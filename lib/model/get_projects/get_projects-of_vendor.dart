// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  Welcome({
    required this.the0,
    required this.the1,
    required this.the2,
    required this.the3,
    required this.the4,
    required this.the5,
    required this.code,
    required this.status,
  });

  The0 the0;
  The0 the1;
  The0 the2;
  The0 the3;
  The0 the4;
  The0 the5;
  int code;
  String status;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        the0: The0.fromJson(json["0"]),
        the1: The0.fromJson(json["1"]),
        the2: The0.fromJson(json["2"]),
        the3: The0.fromJson(json["3"]),
        the4: The0.fromJson(json["4"]),
        the5: The0.fromJson(json["5"]),
        code: json["code"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "0": the0.toJson(),
        "1": the1.toJson(),
        "2": the2.toJson(),
        "3": the3.toJson(),
        "4": the4.toJson(),
        "5": the5.toJson(),
        "code": code,
        "status": status,
      };
}

class The0 {
  The0({
    required this.projectDetail,
    required this.asPId,
    required this.locationId,
  });

  Map<String, String> projectDetail;
  String asPId;
  String locationId;

  factory The0.fromJson(Map<String, dynamic> json) => The0(
        projectDetail: Map.from(json["project_detail"])
            .map((k, v) => MapEntry<String, String>(k, v)),
        asPId: json["as_p_id"],
        locationId: json["location_id"],
      );

  Map<String, dynamic> toJson() => {
        "project_detail": Map.from(projectDetail)
            .map((k, v) => MapEntry<String, dynamic>(k, v)),
        "as_p_id": asPId,
        "location_id": locationId,
      };
}
