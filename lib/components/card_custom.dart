import 'package:flutter/material.dart';

class CardCustom extends StatelessWidget {
  const CardCustom({super.key, required this.child, this.color});

  final Widget child;
  final Color? color;


  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: color == null ? Theme.of(context).colorScheme.outline : color!,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
        child: Padding(padding: const EdgeInsets.all(8.0), child: child),
      ),
    );
  }
}
