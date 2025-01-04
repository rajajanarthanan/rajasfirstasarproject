import 'package:dartz/dartz.dart';
import 'package:logger/logger.dart';


/***
 * This class is used to handle the execution of a function with error handling
 */
class AsarHandle {
  Future<Either<String, dynamic>> call(
    Function toDo, {
    String? logTitle,
    List<dynamic>? positionalArgs,
    Map<Symbol, dynamic>? namedArgs,
  }) async {
    final logger = Logger();

    try {
      // Call the function
      final result = Function.apply(toDo, positionalArgs, namedArgs);

      // Resolve the result if it's a Future
      final resolvedResult = result is Future ? await result : result;
      
      // Return the result as Right if successful
      return Right(resolvedResult);
    } catch (e) {
      // Log the error and return it as Left if failed
      logger.e('$logTitle ${e.toString()}');

      // Return the error as Left
      return Left('Failed: ${e.toString()}');
    }
  }
}