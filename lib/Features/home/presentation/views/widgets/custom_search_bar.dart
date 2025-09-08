import 'package:flutter/material.dart';
import 'package:store/core/utils/colors.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colorss.kOrderAndTitleButtonColor,
      style: TextStyle(color: Colorss.kOrderAndTitleButtonColor),
      decoration: InputDecoration(
        hintText: "Search",
        hintStyle: TextStyle(
          color: Colorss.kOrderAndTitleButtonColor,
          fontWeight: FontWeight.bold,
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 20),
        prefixIcon: Icon(
          Icons.search,
          size: 30,
          color: Colorss.kOrderAndTitleButtonColor,
        ),
        enabledBorder: buildOutLineBorder(),
        focusedBorder: buildOutLineBorder(),
        border: buildOutLineBorder(),
      ),
    );
  }

  UnderlineInputBorder buildOutLineBorder() {
    return UnderlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(
        width: 2,
        color: Colorss.kCategoryCardColor.withOpacity(.2),
      ),
    );
  }
}
