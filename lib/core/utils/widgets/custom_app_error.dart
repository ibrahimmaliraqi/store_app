import 'package:flutter/material.dart';
import 'package:store/core/utils/colors.dart';

class AppErrorWidget extends StatelessWidget {
  const AppErrorWidget({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colorss.kOrderAndTitleButtonColor,
      ),
      child: Text(text),
    );
  }
}
