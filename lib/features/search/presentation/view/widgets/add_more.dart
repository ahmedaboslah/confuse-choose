import 'package:confuse/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class AddMore extends StatelessWidget {
  const AddMore({
    super.key,
    this.onTap,
  });
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 28),
      child: GestureDetector(
        onTap: onTap,
        child: const Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.add_circle,
              color: Colors.amber,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              'add more',
              style: TextAppStyles.medium12,
            )
          ],
        ),
      ),
    );
  }
}
