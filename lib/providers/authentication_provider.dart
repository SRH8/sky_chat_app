import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:sky_chat_app/services/services.dart';

class AuthenticatorProvider extends ChangeNotifier{
  late final FirebaseAuth _auth;
  late final DatabaseService _databaseService;

  AuthenticatorProvider(){
    _auth = FirebaseAuth.instance;
    _databaseService = GetIt.instance.get<DatabaseService>();


  }



}