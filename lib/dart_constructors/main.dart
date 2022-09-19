void main() {
  const a = User(firstName: "Thomas");
  const b = User(firstName: "bob");

  print(a == b);
}


class User {
  final String firstName;

  const User({required this.firstName});
}