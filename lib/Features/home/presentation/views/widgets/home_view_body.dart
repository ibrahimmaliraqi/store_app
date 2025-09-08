import 'package:flutter/material.dart';
import 'package:store/Features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:store/core/utils/assets.dart';
import 'package:store/core/utils/colors.dart';
import 'package:store/core/utils/styles.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          CustomAppBar(),
        ],
      ),
    );
  }
}
