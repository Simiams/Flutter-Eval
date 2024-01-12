import 'package:flutter/cupertino.dart';

class PaymentMethod {
  num id;
  String name;
  IconData icon;

  PaymentMethod({
    required this.id,
    required this.icon,
    required this.name,
  });
}
