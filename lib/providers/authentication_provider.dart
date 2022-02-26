import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:sky_chat_app/services/services.dart';
import 'package:sky_chat_app/models/models.dart';
class AuthenticatorProvider extends ChangeNotifier {
  late final FirebaseAuth _auth;
  late final DatabaseService _databaseService;
  late ChatUser user;

  AuthenticatorProvider() {
    _auth = FirebaseAuth.instance;
    _databaseService = GetIt.instance.get<DatabaseService>();

    _auth.authStateChanges().listen((_user) {
      if (_user != null) {
        _databaseService.updateUserLastActiveTime(_user.uid);
        _databaseService.getUser(_user.uid).then(
              (_snapshot) {
                Map<String, dynamic> _userData = _snapshot.data()! as Map<String, dynamic>;
                user = ChatUser.fromJSON(
                  {
                    'uid': _user.uid,
                    'name': _userData['name'],
                    'email': _userData['email'],
                    'last_active': _userData['last_active'],
                    'image': _userData['image'],
                  }
                );
              },
            );
      } else {}
    });
  }

  Future<void> loginUsingEmailAndPassword(
      String _email, String _password) async {
    try {
      await _auth.signInWithEmailAndPassword(
          email: _email, password: _password);
      print(_auth.currentUser);
    } on FirebaseAuthException {
      print("Error al iniciar sesion en Firebase");
    } catch (e) {
      print(e);
    }
  }
}
