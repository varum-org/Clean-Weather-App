class Unit {
  const Unit._();

  factory Unit() => const Unit._();

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Unit && runtimeType == other.runtimeType;

  @override
  int get hashCode => 0;

  @override
  String toString() => 'Unit';
}
