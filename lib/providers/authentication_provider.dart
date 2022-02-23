import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:sky_chat_app/services/services.dart';

class AuthenticatorProvider extends ChangeNotifier {
  late final FirebaseAuth _auth;
  late final DatabaseService _databaseService;

  AuthenticatorProvider() {
    _auth = FirebaseAuth.instance;
    _databaseService = GetIt.instance.get<DatabaseService>();
  }

  Future<void> loginUsingEmailAndPassword(String _email, String _password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: _email, password: _password);
      print(_auth.currentUser);
    } on FirebaseAuthException{
      print("Error al iniciar sesion en Firebase");
    } catch(e){
      print(e);
    }
  }
}
