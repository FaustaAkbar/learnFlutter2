import 'package:flutter/material.dart';

class Badgee extends StatelessWidget {
  Badgee({
    super.key, // Menggunakan super.key untuk mendukung versi terbaru
    required this.child,
    required this.value,
    this.color,
  });

  final Widget child;
  final String value;
  final Color? color; // Menggunakan tanda '?' untuk nullable types

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        child,
        Positioned(
          right: 8,
          top: 8,
          child: Container(
            padding: const EdgeInsets.all(2.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: color ??
                  Theme.of(context).primaryColor, // Perubahan dari accentColor
            ),
            constraints: const BoxConstraints(
              minWidth: 16,
              minHeight: 16,
            ),
            child: Text(
              value,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 10,
                color: Colors.black,
              ),
            ),
          ),
        )
      ],
    );
  }
}
