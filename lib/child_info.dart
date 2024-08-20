class ChildInfo {
  final int id;
  final String name;
  final Set birthDate;

  const ChildInfo({
    required this.id,
    required this.name,
    required this.birthDate,
  });

    Map<String, Object?> toMap() {
    return {
      'id': id,
      'name': name,
      'birthDate': birthDate,
    };
  }

  @override
  String toString() {
    return 'Child{id: $id, name: $name, birthDate: $birthDate}';
  }
}