import 'package:dio/dio.dart';

abstract class FormDataBuilder {
  static const keys = 'keys';
  static const fileUploadedKey = 'file_uploaded';

  static Future<FormData> validateFile(String filePath) async =>
      FormData.fromMap(
        {
          fileUploadedKey: MultipartFile.fromFile(filePath),
        },
      );

  static Future<FormData> generateFile(String filePath) async =>
      FormData.fromMap(
        {
          fileUploadedKey: MultipartFile.fromFile(filePath),
        },
      );
}
