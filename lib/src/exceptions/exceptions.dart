import '../constants/enums.dart';

class AuthException implements Exception {
  static handleException(e) {
    print(e.code);

    switch (e.code) {
      case "ERROR_INVALID_EMAIL":
        return AuthResultStatus.invalidEmail;

      case "ERROR_WRONG_PASSWORD":
        return AuthResultStatus.wrongPassword;

      case "ERROR_USER_NOT_FOUND":
        return AuthResultStatus.userNotFound;

      case "ERROR_USER_DISABLED":
        return AuthResultStatus.userDisabled;

      case "ERROR_TOO_MANY_REQUESTS":
        return AuthResultStatus.tooManyRequests;

      case "ERROR_OPERATION_NOT_ALLOWED":
        return AuthResultStatus.operationNotAllowed;

      case "ERROR_EMAIL_ALREADY_IN_USE":
        return AuthResultStatus.emailAlreadyExists;

      default:
        return AuthResultStatus.undefined;
    }
  }

  static generateExceptionMessage(exceptionCode) {
    String errorMessage;
    switch (exceptionCode) {
      case AuthResultStatus.invalidEmail:
        errorMessage = "Your email address appears to be malformed.";
        break;
      case AuthResultStatus.wrongPassword:
        errorMessage = "Your password is wrong.";
        break;
      case AuthResultStatus.userNotFound:
        errorMessage = "User with this email doesn't exist.";
        break;
      case AuthResultStatus.userDisabled:
        errorMessage = "User with this email has been disabled.";
        break;
      case AuthResultStatus.tooManyRequests:
        errorMessage = "Too many requests. Try again later.";
        break;
      case AuthResultStatus.operationNotAllowed:
        errorMessage = "Signing in with Email and Password is not enabled.";
        break;
      case AuthResultStatus.emailAlreadyExists:
        errorMessage =
            "The email has already been registered. Please login or reset your password.";
        break;
      default:
        errorMessage = "An undefined Error happened.";
    }

    return errorMessage;
  }
}

/// A custom exception class for handling specific exceptions in the application.
/// This class implements the Dart `Exception` interface, allowing it to be thrown
/// and caught like other exceptions in Dart.

class CustomException implements Exception {
  final String? message;
  final String? errorCode;

  CustomException({this.message, this.errorCode});

  bool get hasCode => errorCode != null;
  bool get hasMessage => message != null;

  @override
  String toString() => message ?? '';
}
