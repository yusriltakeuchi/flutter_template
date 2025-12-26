import 'package:flutter_template/core/networks/error_handler.dart';

class BaseResponseList<T> {
  final String message;
  final ResponseCode responseCode;
  final List<T> data;

  BaseResponseList({
    required this.message,
    required this.responseCode,
    required this.data,
  });

  factory BaseResponseList.fromJson(Map<String, dynamic> json, ResponseCode responseCode, Function(List<dynamic>) fromJsonData) {
    return BaseResponseList(
      message: json['message'] ?? "",
      responseCode: responseCode,
      data: json['data'] != null
        ? fromJsonData(json['data'] is String ? json : json['data'])
        : json['users'] != null
          ? fromJsonData(json['users'] is String ? json : json['users'])
          : []
    );
  }
}