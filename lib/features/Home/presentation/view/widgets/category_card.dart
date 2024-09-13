import 'package:confuse/core/utils/app_styles.dart';
import 'package:confuse/core/utils/colors.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180, 
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: colors.secondaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/images/unsplash_TqOEGdRNowY.png', 
              height: 150,
              width: 150,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Dinner',
            style: TextStyles.bold16,
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star, color: Colors.yellow[700], size: 16),
              const Text(
                '4.8(163)',
                style: TextStyles.regular12,
              ),
              const SizedBox(width: 10),
              const Icon(Icons.access_time, color: Colors.grey, size: 16),
              const Text(
                '20 min',
                style: TextStyles.regular12,
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Text(
            '6 ingredients',
            style: TextStyles.bold18,
          ),
        ],
      ),
    );
  }}