
import 'package:confuse/core/widgets/custom_icon.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key,
      required this.icon,
      this.onPressed,
      required this.secondicon});

  final IconData icon;
  final IconData secondicon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomIcon.customIcon(
          onPressed: onPressed,
          icon: icon,
        ),
        CustomIcon.customIcon(
          onPressed: onPressed,
          icon: secondicon,
        )
      ],
    );
  }
}
