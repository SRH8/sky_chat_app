import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:sky_chat_app/providers/providers.dart';
import 'package:sky_chat_app/screens/screens.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:sky_chat_app/services/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  GetIt.instance.registerSingleton<MediaService>(MediaService());
  GetIt.instance.registerSingleton<CloudStorageService>(CloudStorageService());
  GetIt.instance.registerSingleton<DatabaseService>(DatabaseService());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<AuthenticatorProvider>(
              create: (BuildContext context) {
            return AuthenticatorProvider();
          })
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Sky',
          routes: {
            'onboard': (_) => OnboardScreen(),
            'login': (_) => LoginScreen(),
            'signup': (_) => SignUpScreen(),
            'searchuser': (_) => SearchUserScreen(),
            'chatlist': (_) => ChatListScreen(),
            'chat': (_) => ChatScreen(),
          },
          initialRoute: 'onboard',
        ));
  }
}
