import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:store/Features/home/data/models/product_model/product_model.dart';
import 'package:store/Features/home/data/repos/home_repo.dart';

part 'product_cubit_state.dart';

class ProductCubitCubit extends Cubit<ProductCubitState> {
  ProductCubitCubit(this.homeRepo) : super(ProductCubitInitial());
  final HomeRepo homeRepo;
  Future<void> fetchHomeProduct() async {
    emit(ProductCubitLoading());
    var result = await homeRepo.fetchProduct();
    result.fold(
      (failure) {
        emit(ProductCubitFailure(failure.errMessage));
      },
      (burgers) {
        emit(ProductCubitSuccess(burgers));
      },
    );
  }
}
