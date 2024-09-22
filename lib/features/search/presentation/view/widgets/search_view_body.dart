import 'package:confuse/core/utils/app_styles.dart';
import 'package:confuse/core/utils/colors.dart';
import 'package:confuse/features/search/presentation/view/widgets/add_more.dart';
import 'package:confuse/features/search/presentation/view/widgets/search_field.dart';
import 'package:flutter/material.dart';

import 'choosen_ingredeints.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({super.key});

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  String? ing;
  List<String> ingerdients = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Searchfield(
          onChanged: (value) {
            ing = value;
          },
        ),
        Visibility(
          visible: ingerdients.isNotEmpty,
          child: SizedBox(
            height: 60,
            width: double.infinity,
            child: ChoosenIngredeints(ingerdients: ingerdients),
          ),
        ),
        AddMore(
          onTap: () {
            if (ing != null && ing!.isNotEmpty) {
              setState(() {
                ingerdients.add(ing!);
                ing = '';
              });
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('please enter something'),
                ),
              );
            }
          },
        ),
         TextButton(
          onPressed: () {},
          style: const ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(colors.buttonColor)),
           child:  const Padding(
            padding: EdgeInsets.all(12),
            child: Text(
              'Search',
              style: TextAppStyles.bold16,
            ),
          ),
        )
      ],
    );
  }
}
