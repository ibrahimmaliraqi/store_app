import 'package:flutter/material.dart';
import 'package:store/Features/home/presentation/views/widgets/custom_detils_app_bar.dart';

class BurgerDetilsViewBody extends StatelessWidget {
  const BurgerDetilsViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          CustomBurgerDetilsAppBar(),
        ],
      ),
    );
  }
}
