import 'package:flutter/material.dart';
import 'package:project1/pages/RegisterPage.dart';
import 'package:project1/pages/login_page.dart';

class LoginorRegisterPage extends StatefulWidget {
  const LoginorRegisterPage({Key? key}) : super(key: key);

  @override
  State<LoginorRegisterPage> createState() => _LoginorRegisterPageState();
}

class _LoginorRegisterPageState extends State<LoginorRegisterPage> {
  bool showloginpage=true;

  void togglePages(){
    setState((){
      showloginpage =!showloginpage;
    });
  }


  @override
  Widget build(BuildContext context) {
    if(showloginpage){
      return LoginPage(
        onTap: togglePages,
      );}
      else{
        return RegisterPage(
          onTap: togglePages,
        );
    }
    }
  }

