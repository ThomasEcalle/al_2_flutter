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
    return Container(
      height: 100,
      width: double.maxFinite,
      child: Center(
        child: Text(user.firstName),
      ),
    );
  }
}
