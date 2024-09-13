import 'package:confuse/core/utils/app_styles.dart';
import 'package:confuse/core/utils/colors.dart';
import 'package:confuse/features/Home/presentation/view/widgets/category_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePageViewBody extends StatelessWidget {
  const HomePageViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 40,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 8),
          child: Text(
            'Choose your dish',
            style: TextStyles.semiBold20,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Expanded(
            child: GridView.builder(
              itemCount: 6,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2 / 3,
              mainAxisSpacing: 10),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal:  16,vertical: 8),
              child: const CategoryCard(),
            );
          },
        ))
      ],
    );
  }
}
