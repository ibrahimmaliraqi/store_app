import 'package:dartz/dartz.dart';
import 'package:store/Features/home/data/models/product_model/product_model.dart';
import 'package:store/core/errors/failure.dart';

abstract class HomeRepo {
  Future<Either<ServerFailure, List<ProductModel>>> fetchProduct();
}
