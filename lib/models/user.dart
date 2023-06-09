class User {
  final int id;
  final String name;
  final String username;
  final String email;
  final String? profilePhoto;
  final String? phoneNumber;

  User({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    this.profilePhoto,
    this.phoneNumber,
  });

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map["id"],
      name: map["name"],
      username: map["username"],
      email: map["email"],
      profilePhoto: map["profile_photo"],
      phoneNumber: map["phone_number"],
    );
  }

  factory User.dummy() {
    return User(
      id: 001,
      name: "Kelompok 1 Kelas B",
      username: "kelompok1",
      email: "kelompok1@gmail.com",
      profilePhoto: "https://media.matamata.com/thumbs/2022/02/15/69258-potret-ragil-mahardika-instagramragilmahardika/745x489-img-69258-potret-ragil-mahardika-instagramragilmahardika.jpg",
      phoneNumber: "0887774512112",
    );
  }
}
