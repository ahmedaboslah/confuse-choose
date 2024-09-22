import 'package:confuse/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ChoosenIngredeints extends StatelessWidget {
  const ChoosenIngredeints({
    super.key,
    required this.ingerdients,
  });

  final List<String> ingerdients;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: ingerdients.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(width: 2, color: Colors.grey),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(Icons.cancel_rounded, color: Colors.white),
                const SizedBox(width: 6),
                Text(
                  ingerdients[index],
                  style: TextAppStyles.medium12,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
