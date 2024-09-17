import 'package:confuse/features/Category/Category_veiw.dart';
import 'package:confuse/features/Home/presentation/view/widgets/category_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CategoryGridView extends StatelessWidget {
  const CategoryGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 6,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 2 / 3, mainAxisSpacing: 10),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: SizedBox(
            width: 180,
            height: 200,
            child: CategoryCard(
              onTap: () {
                GoRouter.of(context).push(
                  CategoryVeiw.categoryVeiwid,
                );
              },
            ),
          ),
        );
      },
    );
  }
}
