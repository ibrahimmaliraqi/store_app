part of 'product_cubit_cubit.dart';

sealed class ProductCubitState extends Equatable {
  const ProductCubitState();

  @override
  List<Object> get props => [];
}

final class ProductCubitInitial extends ProductCubitState {}

final class ProductCubitLoading extends ProductCubitState {}

final class ProductCubitSuccess extends ProductCubitState {
  final List<ProductModel> burgers;

  const ProductCubitSuccess(this.burgers);
}

final class ProductCubitFailure extends ProductCubitState {
  final String errMessage;

  const ProductCubitFailure(this.errMessage);
}
