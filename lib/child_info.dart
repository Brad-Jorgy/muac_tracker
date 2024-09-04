class ChildInfo {
  final String name;
  final String birthDate;

  const ChildInfo({
    required this.name,
    required this.birthDate,
  });

    Map<String, Object?> toMap() {
    return {
      'name': name,
      'birthDate': birthDate,
    };
  }

  @override
  String toString() {
    return 'Child{name: $name, birthDate: $birthDate}';
  }
}