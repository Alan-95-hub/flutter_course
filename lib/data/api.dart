import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'api_constants.dart';
import 'form_data_builder.dart';

class Api {
  final Dio dio;

  const Api(this.dio);

  Future<void> validateFile(String fileUrl) async {
    try {
      await dio.post(
        ApiConstants.validateFile,
        data: FormDataBuilder.validateFile(fileUrl),
        options: Options(
          headers: {
            "Content-Type": "multipart/form-data",
          },
        ),
      );
    } on DioError catch (e, stacktrace) {
      debugPrint(e.message);
      debugPrint(stacktrace.toString());
    }
  }

  Future<void> generateFile(String fileUrl) async {
    try {
      await dio.post(
        ApiConstants.validateFile,
        data: FormDataBuilder.validateFile(fileUrl),
        options: Options(
          headers: {
            "Content-Type": "multipart/form-data",
          },
        ),
      );
    } on DioError catch (e, stacktrace) {
      debugPrint(e.message);
      debugPrint(stacktrace.toString());
    }
  }
}
