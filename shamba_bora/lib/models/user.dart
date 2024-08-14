class User {
  final String firstName;
  final String lastName;
  final String email;
  final String telephone;
  final String location;
  final String nin;
  final String gender;
  final String country;
  final String password;

  User({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.nin,
    required this.telephone,
    required this.location,
    required this.gender,
    required this.country,
    required this.password,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': firstName,
      'lastname': lastName,
      'email': email,
      'telephone': telephone,
      'location': location,
      'nin': nin,
      'gender': gender,
      'country': country,
      'password': password,
    };
  }
}
