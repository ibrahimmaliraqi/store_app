import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:store/Features/home/presentation/views/widgets/burger_detils_view_body.dart';
import 'package:store/Features/home/presentation/views/widgets/custom_detils_app_bar.dart';
import 'package:store/core/utils/widgets/custom_buttons.dart';

class BurgerDetilsView extends StatelessWidget {
  const BurgerDetilsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BurgerDetilsViewBody(),
    );
  }
}
