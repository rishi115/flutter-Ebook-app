import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project1/pages/Homepage.dart';


import 'LoginorRegisterpage.dart';

class  AuthPage extends StatelessWidget {
  const  AuthPage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context,snapshot){
          if(snapshot.hasData){
            return Homepage();
          }
          else{
            return const LoginorRegisterPage() ;
          }

      }
      )
      ,
    );
  }
}
