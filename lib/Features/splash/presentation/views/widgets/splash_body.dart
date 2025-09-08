import 'package:flutter/material.dart';
import 'package:store/core/utils/colors.dart';
import 'package:store/core/utils/styles.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 231, 94, 105),
                Colorss.kPrimaryColor,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.1, 1.0],
            ),
          ),
          child: Stack(
            children: [
              Center(
                child: Text(
                  "FOODGO",
                  style: Styles.textStyle60.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
