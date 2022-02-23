import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService{
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final String USER_COLLECTION = "Users";

  DatabaseService(){}

  Future<DocumentSnapshot> getUser(String _uid){
    return _db.collection(USER_COLLECTION).doc(_uid).get();
  }

  Future<void> updateUserLastActiveTime(String _uid) async {
    try {
      await _db.collection(USER_COLLECTION).doc(_uid).update(
        {
          'last_active' : DateTime.now().toUtc(),
        }
      );
    } catch (e) {
      print(e);
    }

  }

}