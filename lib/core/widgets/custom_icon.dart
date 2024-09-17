import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon.customIcon({super.key, required this.icon, this.onPressed});

  final void Function()? onPressed;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 46,
      width: 40,
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          color: Colors.white,
          icon,
          size: 22,
        ),
      ),
    );
  }
}
