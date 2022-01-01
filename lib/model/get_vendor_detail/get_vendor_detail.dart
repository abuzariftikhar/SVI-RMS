// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  Welcome({
    required this.basicInfo,
    required this.vendorAttachments,
    required this.bankDetails,
    required this.certificates,
    required this.coverageAreas,
    required this.educations,
    required this.languages,
    required this.rates,
    required this.skills,
    required this.tools,
  });

  Map<String, String> basicInfo;
  List<VendorAttachment> vendorAttachments;
  List<BankDetail> bankDetails;
  List<Certificate> certificates;
  List<CoverageArea> coverageAreas;
  List<Education> educations;
  List<Language> languages;
  List<dynamic> rates;
  List<Skill> skills;
  List<Tool> tools;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        basicInfo: Map.from(json["basic_info"])
            .map((k, v) => MapEntry<String, String>(k, v)),
        vendorAttachments: List<VendorAttachment>.from(
            json["vendor_attachments"]
                .map((x) => VendorAttachment.fromJson(x))),
        bankDetails: List<BankDetail>.from(
            json["bank_details"].map((x) => BankDetail.fromJson(x))),
        certificates: List<Certificate>.from(
            json["certificates"].map((x) => Certificate.fromJson(x))),
        coverageAreas: List<CoverageArea>.from(
            json["coverage_areas"].map((x) => CoverageArea.fromJson(x))),
        educations: List<Education>.from(
            json["educations"].map((x) => Education.fromJson(x))),
        languages: List<Language>.from(
            json["languages"].map((x) => Language.fromJson(x))),
        rates: List<dynamic>.from(json["rates"].map((x) => x)),
        skills: List<Skill>.from(json["skills"].map((x) => Skill.fromJson(x))),
        tools: List<Tool>.from(json["tools"].map((x) => Tool.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "basic_info":
            Map.from(basicInfo).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "vendor_attachments":
            List<dynamic>.from(vendorAttachments.map((x) => x.toJson())),
        "bank_details": List<dynamic>.from(bankDetails.map((x) => x.toJson())),
        "certificates": List<dynamic>.from(certificates.map((x) => x.toJson())),
        "coverage_areas":
            List<dynamic>.from(coverageAreas.map((x) => x.toJson())),
        "educations": List<dynamic>.from(educations.map((x) => x.toJson())),
        "languages": List<dynamic>.from(languages.map((x) => x.toJson())),
        "rates": List<dynamic>.from(rates.map((x) => x)),
        "skills": List<dynamic>.from(skills.map((x) => x.toJson())),
        "tools": List<dynamic>.from(tools.map((x) => x.toJson())),
      };
}

class BankDetail {
  BankDetail({
    required this.vendorId,
    required this.bankName,
    required this.bankSwift,
    required this.iban,
    @required this.cityAddress,
    @required this.accountTitle,
    required this.latest,
    required this.accountType,
    required this.bankCountry,
    required this.accountCurrency,
    required this.recepientAddress,
    required this.streetNumber,
    required this.moreAddressDetail,
    required this.cityTown,
    required this.postalZipCode,
    required this.country,
    required this.accountHolderName,
    required this.accountNumber,
    required this.routingNumber,
    required this.wireTransferNumber,
    required this.sortCode,
    required this.bankCode,
    required this.branchCode,
    required this.ifscCode,
    required this.acceptEur,
  });

  String vendorId;
  String bankName;
  String bankSwift;
  String iban;
  dynamic cityAddress;
  dynamic accountTitle;
  String latest;
  String accountType;
  String bankCountry;
  String accountCurrency;
  String recepientAddress;
  String streetNumber;
  String moreAddressDetail;
  String cityTown;
  String postalZipCode;
  String country;
  String accountHolderName;
  String accountNumber;
  String routingNumber;
  String wireTransferNumber;
  String sortCode;
  String bankCode;
  String branchCode;
  String ifscCode;
  String acceptEur;

  factory BankDetail.fromJson(Map<String, dynamic> json) => BankDetail(
        vendorId: json["vendor_id"],
        bankName: json["bank_name"],
        bankSwift: json["bank_swift"],
        iban: json["iban"],
        cityAddress: json["city_address"],
        accountTitle: json["account_title"],
        latest: json["latest"],
        accountType: json["account_type"],
        bankCountry: json["bank_country"],
        accountCurrency: json["account_currency"],
        recepientAddress: json["recepient_address"],
        streetNumber: json["street_number"],
        moreAddressDetail: json["more_address_detail"],
        cityTown: json["city_town"],
        postalZipCode: json["postal_zip_code"],
        country: json["country"],
        accountHolderName: json["account_holder_name"],
        accountNumber: json["account_number"],
        routingNumber: json["routing_number"],
        wireTransferNumber: json["wire_transfer_number"],
        sortCode: json["sort_code"],
        bankCode: json["bank_code"],
        branchCode: json["branch_code"],
        ifscCode: json["ifsc_code"],
        acceptEur: json["accept_eur"],
      );

  Map<String, dynamic> toJson() => {
        "vendor_id": vendorId,
        "bank_name": bankName,
        "bank_swift": bankSwift,
        "iban": iban,
        "city_address": cityAddress,
        "account_title": accountTitle,
        "latest": latest,
        "account_type": accountType,
        "bank_country": bankCountry,
        "account_currency": accountCurrency,
        "recepient_address": recepientAddress,
        "street_number": streetNumber,
        "more_address_detail": moreAddressDetail,
        "city_town": cityTown,
        "postal_zip_code": postalZipCode,
        "country": country,
        "account_holder_name": accountHolderName,
        "account_number": accountNumber,
        "routing_number": routingNumber,
        "wire_transfer_number": wireTransferNumber,
        "sort_code": sortCode,
        "bank_code": bankCode,
        "branch_code": branchCode,
        "ifsc_code": ifscCode,
        "accept_eur": acceptEur,
      };
}

class Certificate {
  Certificate({
    required this.vendorId,
    required this.name,
    required this.certificateFile,
  });

  String vendorId;
  String name;
  String certificateFile;

  factory Certificate.fromJson(Map<String, dynamic> json) => Certificate(
        vendorId: json["vendor_id"],
        name: json["name"],
        certificateFile: json["certificate_file"],
      );

  Map<String, dynamic> toJson() => {
        "vendor_id": vendorId,
        "name": name,
        "certificate_file": certificateFile,
      };
}

class CoverageArea {
  CoverageArea({
    required this.vendorId,
    required this.city,
    required this.country,
  });

  String vendorId;
  String city;
  String country;

  factory CoverageArea.fromJson(Map<String, dynamic> json) => CoverageArea(
        vendorId: json["vendor_id"],
        city: json["city"],
        country: json["country"],
      );

  Map<String, dynamic> toJson() => {
        "vendor_id": vendorId,
        "city": city,
        "country": country,
      };
}

class Education {
  Education({
    required this.vendorId,
    required this.name,
    required this.location,
    required this.educationFile,
  });

  String vendorId;
  String name;
  String location;
  String educationFile;

  factory Education.fromJson(Map<String, dynamic> json) => Education(
        vendorId: json["vendor_id"],
        name: json["name"],
        location: json["location"],
        educationFile: json["education_file"],
      );

  Map<String, dynamic> toJson() => {
        "vendor_id": vendorId,
        "name": name,
        "location": location,
        "education_file": educationFile,
      };
}

class Language {
  Language({
    required this.vendorId,
    required this.name,
    required this.languageLevel,
  });

  String vendorId;
  String name;
  String languageLevel;

  factory Language.fromJson(Map<String, dynamic> json) => Language(
        vendorId: json["vendor_id"],
        name: json["name"],
        languageLevel: json["language_level"],
      );

  Map<String, dynamic> toJson() => {
        "vendor_id": vendorId,
        "name": name,
        "language_level": languageLevel,
      };
}

class Skill {
  Skill({
    required this.vendorId,
    required this.name,
    required this.description,
    required this.skillLevel,
  });

  String vendorId;
  String name;
  String description;
  String skillLevel;

  factory Skill.fromJson(Map<String, dynamic> json) => Skill(
        vendorId: json["vendor_id"],
        name: json["name"],
        description: json["description"],
        skillLevel: json["skill_level"],
      );

  Map<String, dynamic> toJson() => {
        "vendor_id": vendorId,
        "name": name,
        "description": description,
        "skill_level": skillLevel,
      };
}

class Tool {
  Tool({
    required this.vendorId,
    required this.name,
    required this.image,
  });

  String vendorId;
  String name;
  String image;

  factory Tool.fromJson(Map<String, dynamic> json) => Tool(
        vendorId: json["vendor_id"],
        name: json["name"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "vendor_id": vendorId,
        "name": name,
        "image": image,
      };
}

class VendorAttachment {
  VendorAttachment({
    required this.vendorId,
    required this.name,
    required this.attachmentFile,
  });

  String vendorId;
  String name;
  String attachmentFile;

  factory VendorAttachment.fromJson(Map<String, dynamic> json) =>
      VendorAttachment(
        vendorId: json["vendor_id"],
        name: json["name"],
        attachmentFile: json["attachment_file"],
      );

  Map<String, dynamic> toJson() => {
        "vendor_id": vendorId,
        "name": name,
        "attachment_file": attachmentFile,
      };
}
