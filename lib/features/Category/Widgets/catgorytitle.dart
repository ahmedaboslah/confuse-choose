import 'package:confuse/core/utils/app_styles.dart';

import 'package:flutter/material.dart';

class Catgorytitle extends StatelessWidget {
  const Catgorytitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Fried Shrimp',
          style: TextAppStyles.regular12
              .copyWith(color: Colors.white, fontSize: 20),
        ),
        Text(
          maxLines: 2,
          textAlign: TextAlign.center,
          'This is my kind of breakfast egg sandwich and it takes under  5 minutes to make',
          style: TextAppStyles.medium13.copyWith(fontSize: 13),
        ),
      ],
    );
  }
}
