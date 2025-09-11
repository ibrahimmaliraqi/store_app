import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'product_cubit_state.dart';

class ProductCubitCubit extends Cubit<ProductCubitState> {
  ProductCubitCubit() : super(ProductCubitInitial());
}
