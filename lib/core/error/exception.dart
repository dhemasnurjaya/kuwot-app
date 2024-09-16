/// Exception class for server error
/// Generally, this exception is thrown when the server returns an error response
class ServerException implements Exception {
  const ServerException(this.message);

  final String message;
}
