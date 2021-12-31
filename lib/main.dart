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
        'onboard' : (_) => const OnboardScreen(),
        'login' : (_) => const LoginScreen(),
        'signup' : (_) => const SignUpScreen(),
        'chatlist' : (_) => const ChatListScreen(),
        'chat' : (_) => const ChatScreen(),
      },
      initialRoute: 'onboard',
     
    );
  }
}


