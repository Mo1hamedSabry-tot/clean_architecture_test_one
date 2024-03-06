part of 'category_bloc.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState.initial() = _Initial;
  const factory CategoryState.loadInProgress() = _LoadInProgress;
  const factory CategoryState.success({required CategoryModel data}) = _Success;
  const factory CategoryState.failure() = _Failure;
}
