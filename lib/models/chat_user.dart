class ChatUser {
  final String uid;
  final String name;
  final String email;
  final String imageURL;
  final DateTime lastActive;

  ChatUser(
      {required this.uid,
      required this.name,
      required this.email,
      required this.imageURL,
      required this.lastActive});

  factory ChatUser.fromJSON(Map<String, dynamic> _mapa) => ChatUser(
      uid: _mapa['uid'],
      name: _mapa['name'],
      email: _mapa['email'],
      imageURL: _mapa['image'],
      lastActive: _mapa['last_active'].toDate());


  Map<String, dynamic> toMap() => {
    'name': name,
    'email': email,
    'last_active':lastActive,
    'image':imageURL
  };

  String lastDayActive(){
    return "${lastActive.day}/${lastActive.month}/${lastActive.year}";
  }

  bool wasRecentlyActive(){
    return DateTime.now().difference(lastActive).inHours < 2;
  }
}
