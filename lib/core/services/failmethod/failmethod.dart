import 'package:sentry_flutter/sentry_flutter.dart';

class Method {
  Future<void> myFunction() async {
    try {
      int result = 12 ~/ 0;
      print("The result is $result");
    } catch (exception, stackTrace) {
      /* print(exception); */
      await Sentry.captureException(
        exception,
        stackTrace: stackTrace,
      );
    }
  }

  Future<void> myFunction2() async {
    try {
      depositMoney(-200);
    } catch (exception, stackTrace) {
      /* print("$exception  my exceptionn"); */
      await Sentry.captureException(
        exception,
        stackTrace: stackTrace,
      );
    }
  }
  Future<void> myFunction3() async {
    try {
      final List myList = [];
      print(myList[1]);
    } catch (exception, stackTrace) {
      /* print("$exception  my exceptionn"); */
      await Sentry.captureException(
        exception,
        stackTrace: stackTrace,
      );
    }
  }
}

class DepositException implements Exception {
  String errorMessage() {
    return "You cannot enter amount less than 0";
  }
}

void depositMoney(int amount) {
  if (amount < 0) {
    throw new DepositException();
  }
}
