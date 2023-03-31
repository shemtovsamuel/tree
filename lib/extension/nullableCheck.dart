extension LetNullable<T> on T {
  R let<R>(R Function(T that) op) => op(this);
}
