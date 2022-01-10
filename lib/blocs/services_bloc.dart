import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:flutter/material.dart';
import 'package:sv_rms_mobile/model/get_projects/project.dart';
import 'package:sv_rms_mobile/model/get_vendor_detail/vendor_details.dart';

class ServicesBloc extends ChangeNotifier {
  final String _authToken = "0cfc4e21af1504b2c48894b57cbc36b8";
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: "https://rmsportal.net/api",
      sendTimeout: const Duration(seconds: 20).inMilliseconds,
      connectTimeout: const Duration(seconds: 20).inMilliseconds,
      receiveTimeout: const Duration(seconds: 20).inMilliseconds,
    ),
  );

// customization
  //  dio.interceptors.add(PrettyDioLogger(
  //       requestHeader: true,
  //       requestBody: true,
  //       responseBody: true,
  //       responseHeader: false,
  //       error: true,
  //       compact: true,
  //       maxWidth: 90));

  Future<VendorDetails> getVendorDetails({required String id}) async {
    Response response = await _dio.get(
      "/get_vendor_detail.php",
      queryParameters: {
        "auth_token": _authToken,
        "id": id,
      },
    );

    if (response.statusCode == 200 || response.statusCode!.toInt() <= 205) {
      return VendorDetails.fromJson(response.data);
    }
    throw response.statusMessage.toString();
  }

  Future<List<Project>>? getProjectDetail(String id) async {
    Response response = await _dio.get(
      "/get_projects.php",
      queryParameters: {
        "auth_token": _authToken,
        "id": id,
      },
    );

    if (response.statusCode == 200 || response.statusCode!.toInt() <= 205) {
      // print(response.data);
      final Map<String, dynamic> projectMap;
      projectMap = response.data;

      List<Project> _list = [];
      int _index = projectMap.values.length;
      for (var element in projectMap.values) {
        if (_index > 2) {
          final Project project;
          project = Project.fromJson(element);
          _list.add(project);
        }
        _index--;
      }

      for (Project element in _list) {
        print(element.projectDetail!.projectName);
      }

      // print(projectMap.values.toString());
      // Project.fromJson(response.data);
    }
    throw response.statusMessage.toString();
  }
}
