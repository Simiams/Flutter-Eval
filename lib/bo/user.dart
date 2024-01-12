import 'address.dart';

class User {
  String name;
  String firstName;
  List<Address> addresses;

  User({
    required this.name,
    required this.firstName,
    required this.addresses,
  });
}
