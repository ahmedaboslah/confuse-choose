import 'package:confuse/features/search/presentation/view/widgets/search_view_body.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});
static const searchViewId='/SearchView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SearchViewBody(),
    );
  }
}