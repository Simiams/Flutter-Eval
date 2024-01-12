import 'dart:core';

import 'package:epsi_shop/components/payment/payment_methods.dart';
import 'package:epsi_shop/components/payment/summary_payment.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../bo/address.dart';
import '../bo/cart.dart';
import '../bo/payment_method.dart';
import '../bo/user.dart';
import '../components/card_custom.dart';
import '../components/payment/summary_address.dart';

User michel = User(
  name: "Le Poney",
  firstName: "Michel",
  addresses: addresses,
);

var addresses = [
  Address(
    address: "8 rue des ouvertures de portes",
    postalCode: "93204",
    city: "Corbeaux",
  )
];

var paymentMethods = [
  PaymentMethod(
    id: 1,
    name: "Apple Pay",
    icon: FontAwesomeIcons.ccApplePay,
  ),
  PaymentMethod(
    id: 2,
    name: "Visa",
    icon: FontAwesomeIcons.ccVisa,
  ),
  PaymentMethod(
    id: 3,
    name: "Mastercard",
    icon: FontAwesomeIcons.ccMastercard,
  ),
  PaymentMethod(
    id: 4,
    name: "Paypal",
    icon: FontAwesomeIcons.ccPaypal,
  ),
];

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) => Consumer<Cart>(
        builder: (context, cart, _) => Scaffold(
          appBar: AppBar(
            title: const Text("Finalisation de la commande"),
          ),
          body: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
          CardCustom(child: SummaryPayment(price: cart.priceTotal())),
          const Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Adresse de livraison",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          CardCustom(child: SummaryAddress(user: michel)),
          const Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Row(
              children: [
                Text("Méthode de paiement",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          PaymentMethods(paymentMethods: paymentMethods),
          const Spacer(),
          const Description(),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Confirmer l'achat"),
          ),
                      ],
                    ),
        ),
      );
}

class Description extends StatelessWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text(
              "En cliquant sur \"Confirmer l'achat\", vous acceptez les Conditions de vente de EPSI Shop INternational. Besoin d'aide? Désolé on peut rien faire.",
              style: TextStyle(
                  fontSize: Theme.of(context).textTheme.bodySmall?.fontSize)),
          Text(
              "En poursuivant, vous acceptez les Condition d'utilisation du fournisseur de paiement CoffeeDis.",
              style: TextStyle(
                  fontSize: Theme.of(context).textTheme.bodySmall?.fontSize)),
        ],
      ),
    );
  }
}
