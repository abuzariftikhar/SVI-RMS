import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:sv_rms_mobile/model/get_vendor_detail/vendor_details.dart';

class ServicesBloc extends ChangeNotifier {
  final String _authToken = "0cfc4e21af1504b2c48894b57cbc36b8";
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: "https://rmsportal.net/api",
      sendTimeout: const Duration(seconds: 10).inMilliseconds,
      connectTimeout: const Duration(seconds: 10).inMilliseconds,
      receiveTimeout: const Duration(seconds: 10).inMilliseconds,
    ),
  );

  Future<VendorDetails> getVendorDetails({required String id}) async {
    Response response = await _dio.get(
      "/get_vendor_detail.php",
      queryParameters: {
        "auth_token": _authToken,
        "id": id,
      },
    );

    if (response.statusCode == 200 || response.statusCode!.toInt() <= 205) {
      // print(response.data);
      return VendorDetails.fromJson(response.data);
    }
    throw response.statusMessage.toString();
  }
}
