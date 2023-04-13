abstract class ApiConstants {
  static const baseUrl = 'http://127.0.0.1:8000';
  static const validateFile = '$baseUrl/api/validate-file/';
  static const generateFile = '$baseUrl/api/generate-file/';
  static const registerUser = '$baseUrl/dj-rest-auth/registration/';
  static const loginUser = '$baseUrl//dj-rest-auth/login/';

  static const multipartHeader = {
    'Content-Type': 'multipart/form-data',
  };
}
