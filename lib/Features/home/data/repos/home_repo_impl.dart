import 'package:dartz/dartz.dart';
import 'package:store/Features/home/data/models/product_model/product_model.dart';
import 'package:store/Features/home/data/repos/home_repo.dart';
import 'package:store/core/errors/failure.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<ServerFailure, List<ProductModel>>> fetchProduct() {
    // TODO: implement fetchProduct
    throw UnimplementedError();
  }
}
