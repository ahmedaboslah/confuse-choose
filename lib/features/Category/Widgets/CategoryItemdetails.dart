import 'package:confuse/core/utils/app_styles.dart';
import 'package:confuse/core/widgets/custom_icon.dart';
import 'package:flutter/material.dart';

class Categoryitemdetails extends StatelessWidget {
  const Categoryitemdetails(
      {super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      CustomIcon.customIcon(icon: icon),
      Text(
        title,
        style: TextAppStyles.regular12.copyWith(color: Colors.grey),
      ),
    ]);
  }
}
