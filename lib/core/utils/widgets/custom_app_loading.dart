import 'package:flutter/material.dart';
import 'package:store/core/utils/colors.dart';

class CustomAppLoading extends StatelessWidget {
  const CustomAppLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: Colorss.kOrderAndTitleButtonColor,
      ),
    );
  }
}
