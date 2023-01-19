class User {
  final String firstName;
  final String lastName;

  const User({
    required this.firstName,
    required this.lastName,
  });

  static User? fromJson(Map<String, dynamic> json) {
    if (json['first_name'] == null || json['last_name'] == null) return null;
    return User(
      firstName: json['first_name'],
      lastName: json['last_name'],
    );
  }

  @override
  String toString() {
    return 'Coucou moi c\'est $firstName';
  }
}
