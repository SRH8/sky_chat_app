import 'package:flutter/material.dart';
import 'package:sky_chat_app/screens/screens.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();


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


