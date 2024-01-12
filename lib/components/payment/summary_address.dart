import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../bo/user.dart';

class SummaryAddress extends StatelessWidget {
  const SummaryAddress({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("${user.firstName} ${user.name}",
                style: const TextStyle(fontWeight: FontWeight.bold)),
            Text(user.addresses.first.address),
            Text(
                "${user.addresses.first.postalCode} ${user.addresses.first.city}"),
          ],
        ),
        const Spacer(),
        const FaIcon(FontAwesomeIcons.chevronRight)
      ],
    );
  }
}
