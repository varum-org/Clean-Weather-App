class ParseJsonException implements Exception {
  final String message;
  final Object? error;

  const ParseJsonException(this.message, [this.error]);

  @override
  String toString() =>
      'ParseJsonException{message=$message, error=$error}';
}
