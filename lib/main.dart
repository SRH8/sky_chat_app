import 'package:flutter/material.dart';
import 'package:sky_chat_app/screens/screens.dart';



void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sky',
      routes: {
        'onboard' : (_) =>  OnboardScreen(),
        'login' : (_) =>  LoginScreen(),
        'signup' : (_) =>  SignUpScreen(),
        'searchuser' : (_)  => SearchUserScreen(),
        'chatlist' : (_) =>  ChatListScreen(),
        'chat' : (_) =>  ChatScreen(),
      },
      initialRoute: 'onboard',
     
    );
  }
}


