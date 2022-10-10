void main() {
  const a = User(firstName: "Thomas");
  const b = User(firstName: "Thomas");

  print(a == b);
}

class User {
  final String firstName;

  const User({this.firstName = ''});

  const User.withoutName({this.firstName = ''});
}
