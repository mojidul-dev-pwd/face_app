class UserInfo{
  final int id;
  final String name;
  final String email;
  final String gender;
  final String status;

  const UserInfo({
    required this.id,
    required this.name,
    required this.email,
    required this.gender,
    required this.status
  });

  factory UserInfo.fromJson(json){
    return switch(json){
      {
      'id': int id,
      'name': String name,
      'email': String email,
      'gender': String gender,
      'status': String status,
      } =>
      UserInfo(
        id: id,
        name: name,
        email: email,
        gender:gender,
        status:status
      ),
      _ => throw const FormatException('Failed to load album.'),
    };
  }
}