import 'package:flutter/material.dart';
import 'package:store/Features/home/presentation/views/widgets/burger_detils_view_body.dart';

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
