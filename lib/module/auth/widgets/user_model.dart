class UserModel {
  String? uid;
  String? name;
  String? username;
  String? email;

  String? avatarUrl;

  UserModel({this.uid, this.name, this.username, this.email, this.avatarUrl});

  factory UserModel.fromMap(map) {
    return UserModel(
        uid: map['uid'],
        name: map['name'],
        username: map['username'],
        email: map['email'],
        avatarUrl: map['avatarUrl']);
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'name': name,
      'username': username,
      'avatarUrl': avatarUrl,
    };
  }
}
