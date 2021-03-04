import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:miniproj2/authentication_services.dart';

class SignedIn extends StatefulWidget {
  final String uid;
  SignedIn(this.uid);
  @override
  _SignedInState createState() => _SignedInState();
}

class _SignedInState extends State<SignedIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      centerTitle: true,
      title: Text(''),
      backgroundColor: Colors.red[800],
      actions: [
        IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              context.read<AuthenticationService>().signOut();
            })
      ],
    ));
  }
}
