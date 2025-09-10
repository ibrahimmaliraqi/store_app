import 'package:dartz/dartz.dart';
import 'package:store/Features/home/data/models/product_model/product_model.dart';
import 'package:store/Features/home/data/repos/home_repo.dart';
import 'package:store/core/errors/failure.dart';
import 'package:store/core/utils/app_services.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<ServerFailure, List<ProductModel>>> fetchProduct() async {
    try {
      var res = await AppServices.get(endPoint: "/products");
      List<ProductModel> burager = [];
      for (var element in res["products"]) {
        burager.add(
          ProductModel.fromJson(element),
        );
      }
      return right(burager);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }
}
