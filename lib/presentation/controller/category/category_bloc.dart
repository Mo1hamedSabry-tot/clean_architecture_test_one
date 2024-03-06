import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_one/app/DTOs/category_model.dart';
import 'package:test_one/app/usecases/get_category_use_case.dart';

part 'category_bloc.freezed.dart';
part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final GetCategoryBaseUsecase getCategoryBaseUsecase;
  CategoryBloc(this.getCategoryBaseUsecase)
      : super(const CategoryState.initial()) {
    on<CategoryEvent>(
      (event, emit) {
        event.maybeMap(
          orElse: () {},
          getcategory: (event) async {
            emit(const _LoadInProgress());
            final res = await getCategoryBaseUsecase.execute();
            res.fold(
              (l) {
                emit(
                  const _Failure(),
                );
              },
              (r) {
                emit(
                  _Success(data: r),
                );
              },
            );
          },
        );
      },
    );
  }
}
