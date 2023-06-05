import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
    Homepage ({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
    final user =FirebaseAuth.instance.currentUser!;

void signoutUser(){
  FirebaseAuth.instance.signOut();

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('logged out'),
        actions: [
          IconButton(onPressed: signoutUser, icon: Icon(Icons.logout))
        ],
      ),
    body: Center(child: Text("loged in as " + user.email!),),
    );
  }
}
