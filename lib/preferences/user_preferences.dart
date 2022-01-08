

import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences{

  static final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  static Future<void> setSkipOnboarding(bool pref) async {
   final SharedPreferences prefs = await _prefs;

   prefs.setBool('onboard', pref);
 }

 static Future<bool> getSkipOnboarding()async {
    final SharedPreferences prefs = await _prefs;
    print(prefs.getBool('onboard'));
    return prefs.getBool('onboard') ?? false;

 }






}