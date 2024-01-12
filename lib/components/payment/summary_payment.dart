import 'package:flutter/material.dart';

class SummaryPayment extends StatelessWidget {
  const SummaryPayment({super.key, required this.price});

  final num price;

  @override
  Widget build(BuildContext context) {
    num tva = price * 0.2;
    num total = price + tva;

    return Column(
      children: [
        Row(
          children: [
            Text(
              "Récapitalulatif de la commande",
              style: TextStyle(
                  fontSize: Theme.of(context).textTheme.bodyMedium?.fontSize,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Row(
          children: [
            const Text("Sous-total"),
            const Spacer(),
            Text("${price.toStringAsFixed(2)} €"),
          ],
        ),
        Row(
          children: [const Text("TVA"), const Spacer(), Text("${tva.toStringAsFixed(2)} €")],
        ),
        Row(
          children: [
            const Text(
              "TOTAL",
              style: TextStyle(
                  fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            Text("${total.toStringAsFixed(2)} €"),
          ],
        ),
      ],
    );
  }
}
