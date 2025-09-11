import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store/Features/home/data/repos/home_repo.dart';
import 'package:store/Features/home/data/repos/home_repo_impl.dart';
import 'package:store/Features/home/presentation/manager/product_cubit/product_cubit_cubit.dart';
import 'package:store/core/utils/app_router.dart';
import 'package:store/core/utils/app_services.dart';
import 'package:store/core/utils/colors.dart';
import 'package:store/core/utils/server_locator.dart';

void main() {
  runApp(StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ProductCubitCubit(getIt.get<HomeRepoImpl>())..fetchHomeProduct(),
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,

        themeMode: ThemeMode.light,
        theme: ThemeData(
          textTheme: ThemeData.light().textTheme.apply(
            bodyColor: Colorss.kCategoryCardColor,
            displayColor: Colorss.kCategoryCardColor,
            fontFamily: GoogleFonts.poppins().fontFamily,
          ),
        ),
      ),
    );
  }
}
