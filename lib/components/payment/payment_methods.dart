import 'package:epsi_shop/page/payment_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../bo/payment_method.dart';
import '../card_custom.dart';

class PaymentMethods extends StatefulWidget {
  const PaymentMethods({super.key, required this.paymentMethods});

  final List<PaymentMethod> paymentMethods;

  @override
  State<PaymentMethods> createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {
  num selectedId = -1;

  void handlePress(id) {
    setState(() {
      selectedId = id;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (var i in paymentMethods)
          i.id == selectedId
              ? Badge(
                  label: Icon(
                      size: 12,
                      color: Theme.of(context).colorScheme.inversePrimary,
                      FontAwesomeIcons.check),
                  offset: const Offset(-6, 7),
                  child: CardCustom(
                      color: i.id == selectedId
                          ? Theme.of(context).colorScheme.primary
                          : Theme.of(context).colorScheme.outline,
                      child: IconButton(
                        icon: FaIcon(i.icon),
                        onPressed: () {
                          handlePress(i.id);
                        },
                      )),
                )
              : CardCustom(
                  color: i.id == selectedId
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.outline,
                  child: IconButton(
                    iconSize: 35,
                    color: i.id == selectedId
                        ? Theme.of(context).colorScheme.primary
                        : Theme.of(context).colorScheme.primary,
                    icon: FaIcon(i.icon),
                    onPressed: () {
                      handlePress(i.id);
                    },
                  )),
      ],
    ));
  }
}
