class Response<T> {
  final int statusCode;
  final T model;
  Response(this.statusCode, this.model);
}
