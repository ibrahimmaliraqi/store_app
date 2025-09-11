import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:store/Features/home/data/models/product_model/product_model.dart';
import 'package:store/Features/home/data/repos/home_repo_impl.dart';
import 'package:store/Features/home/presentation/manager/product_cubit/product_cubit_cubit.dart';
import 'package:store/Features/home/presentation/views/burger_detils_view.dart';
import 'package:store/Features/home/presentation/views/home_view.dart';
import 'package:store/Features/splash/presentation/views/splash_view.dart';
import 'package:store/core/utils/server_locator.dart';

class AppRouter {
  static String buraherView = "/buraherView";
  static String homeView = "/homeView";
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => SplashView(),
      ),
      GoRoute(
        path: homeView,
        builder: (context, state) => HomeView(),
      ),
      GoRoute(
        path: buraherView,
        builder: (context, state) => BlocProvider(
          create: (context) => ProductCubitCubit(getIt.get<HomeRepoImpl>()),
          child: BurgerDetilsView(
            productModel: state.extra as ProductModel,
          ),
        ),
      ),
    ],
  );
}
