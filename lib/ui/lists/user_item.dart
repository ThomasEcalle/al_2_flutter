import 'package:al_2/ui/lists/user.dart';
import 'package:flutter/material.dart';

class UserItem extends StatelessWidget {
  final User user;

  const UserItem({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Building element number ${user.firstName}');
    return ListTile(
      title: Text(user.firstName),
      subtitle: Text(user.lastName),
      leading: Icon(Icons.people),
      
    );
  }
}
