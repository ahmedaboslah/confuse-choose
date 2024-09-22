
import 'package:confuse/core/utils/app_styles.dart';
import 'package:confuse/core/utils/colors.dart';
import 'package:flutter/material.dart';

class Searchfield extends StatelessWidget {
  const Searchfield({
    super.key, this.onChanged, this.onSaved,
  });
final void Function(String?)? onChanged;
final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextFormField(
        onChanged: onChanged,
        onSaved: onSaved,
        style: TextAppStyles.medium12,
        decoration: InputDecoration(
          hintText: 'Search with ingredients',
          hintStyle: TextAppStyles.medium12.copyWith(color: Colors.grey),
          prefixIcon: const Icon(Icons.search_outlined,color: Colors.amber,),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: Colors.grey,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: colors.buttonColor,
            ),
          ),
        ),
      ),
    );
  }
}
