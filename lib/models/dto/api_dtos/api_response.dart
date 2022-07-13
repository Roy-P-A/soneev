import 'package:flutter/material.dart';

class ApiResponse {
  ApiResponse({
    required this.success,
    required this.data,
  });

  bool success;
  dynamic data;

  String message() {
    String? message;
    if (data['message'] != null) {
      if (data['message'] is String) {
        message = data['message'];
      } else if (data['message'] is List<String>) {
        List<String> messageList = data['message'];

        message = messageList.join('\n');
      }
    } else {
      if (data is Map<String, dynamic>) {
        List<dynamic> values = data.values.toList();

        List<String> messageList = [];
        for (final value in values) {
          if (value is String) {
            messageList.add(value);
          } else if (value is List) {
            messageList.addAll(value.map((e) => e.toString()));
          }
        }

        message = messageList.join('\n');
      }
    }

    if (success) return message ?? 'Your request is successfull.';
    return message ?? 'Some error occurred.';
  }
}
