part of 'utility.dart';

class ServerException implements Exception {}

class DatabaseExecption implements Exception {
  final String message;

  DatabaseExecption(this.message);
}
