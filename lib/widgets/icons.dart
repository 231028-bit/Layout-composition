import 'package:flutter/material.dart';

class MenuIcon extends StatelessWidget {
  final IconData icon;
  final String label;

  const MenuIcon({
    super.key, 
    required this.label,
    required this.icon,

    });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
        Icon(icon),
        Text(label),
      ],
    );
  }
}
