part of 'models.dart';

class User extends Equatable {
  final int id;
  final String name;
  final String email;
  final String address;
  final String houseNumber;
  final String phoneNumber;
  final String city;
  final String picturePath;
  static String? token;

  User(
      {required this.id,
      required this.name,
      required this.email,
      required this.address,
      required this.houseNumber,
      required this.phoneNumber,
      required this.city,
      required this.picturePath});

  factory User.fromJson(Map<String, dynamic> data) => User(
        id: data['id'],
        name: data['name'],
        email: data['email'],
        address: data['address'],
        houseNumber: data['houseNumber'],
        phoneNumber: data['phoneNumber'],
        city: data['city'],
        picturePath: data['profile_photo_url'],
      );

  User copyWith({
    required int id,
    required String name,
    required String email,
    required String address,
    required String houseNumber,
    required String phoneNumber,
    required String city,
    required String picturePath,
  }) =>
      User(
          id: id ?? this.id,
          name: name ?? this.name,
          email: email ?? this.email,
          address: address ?? this.address,
          houseNumber: houseNumber ?? this.houseNumber,
          phoneNumber: phoneNumber ?? this.phoneNumber,
          city: city ?? this.city,
          picturePath: picturePath ?? this.picturePath);

  @override
  List<Object> get props =>
      [id, name, email, address, houseNumber, phoneNumber, city, picturePath];
}

User mockUser = User(
    id: 1,
    name: 'Jennie Kim',
    address: 'Jalan Jenderal Sudirman',
    city: 'Bandung',
    houseNumber: '1234',
    phoneNumber: '08123456789',
    email: 'jennie.kim@blackpink.com',
    picturePath:
        'https://i.pinimg.com/474x/8a/f4/7e/8af47e18b14b741f6be2ae499d23fcbe.jpg');