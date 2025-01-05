import 'package:dartz/dartz.dart';
/// *
/// This function is used to handle the execution of a function 
/// with exception handling  behavior thrughout the app.
/// additionally configure contextless alert to user if alertUser is true
/// TODO: add optional remote logging feature
/// *
// class AsarHandle {
  Future<Either<String, dynamic>> safeCall(
    Function toDo, {
    String? logTitle,
    bool alertUser = false,
  }) async {
    try {
      final result = Function.apply(toDo, []);
      final resolvedResult = result is Future ? await result : result;
      return Right(resolvedResult);
    } catch (e) {
      // TODO: Show Contextless alert / SnackbarAlert to user if alertUser is true
      // Return the error as Left
      return Left(e.toString());
    }
  }
