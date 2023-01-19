import 'package:al_2/ui/webservices/user.dart';
import 'package:al_2/ui/webservices/webservices.dart';
import 'package:flutter/material.dart';

class WebservicesWithBuilderScreen extends StatelessWidget {
  const WebservicesWithBuilderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: FutureBuilder(
        future: Webservices.retrieveUsers(),
        builder: (BuildContext context, AsyncSnapshot<List<User>> snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text(
                '${snapshot.error}',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            );
          }

          if (snapshot.hasData) {
            final users = snapshot.data;

            if (users == null || users.isEmpty) {
              return const Center(
                child: Text('No users found'),
              );
            }

            return ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                final user = users[index];
                return ListTile(
                  title: Text(
                    user.firstName,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  subtitle: Text(
                    user.lastName,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                );
              },
            );
          }

          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
