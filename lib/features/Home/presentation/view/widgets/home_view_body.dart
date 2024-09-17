import 'package:confuse/core/utils/app_styles.dart';
import 'package:confuse/features/Home/presentation/view/widgets/category_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePageViewBody extends StatelessWidget {
  const HomePageViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: EdgeInsets.only(left: 8),
          child: Text(
            'Choose your dish',
            style: TextAppStyles.semiBold20,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Expanded(
          child: CategoryGridView(),
        ),
      ],
    );
  }
}
