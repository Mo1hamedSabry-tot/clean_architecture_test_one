import 'package:dartz/dartz.dart';
import 'package:test_one/core/network/failure.dart';
import 'package:test_one/core/types/types.dart';
import 'package:test_one/domain/entities/category_entity.dart';
import 'package:test_one/domain/repo/category_repo.dart';

import '../datasource/base/base_category_datasource.dart';

class CategoryRepoImpl extends CategoryRepo {
  final BaseCategoryDatasource _baseCategoryDatasource;

  CategoryRepoImpl({
    required BaseCategoryDatasource baseCategoryDatasource,
  }) : _baseCategoryDatasource = baseCategoryDatasource;
  @override
  FutureEitherFailureType<CategoryEntity> getCategory() async {
    try {
      final res = await _baseCategoryDatasource.getCategory();
      final category = (res["data"] as Map<String, dynamic>);
      final categoryEntity = CategoryEntity.fromJson(category);
      return Right(categoryEntity);
    } catch (e) {
      return const Left(
        ServerFailure("failure"),
      );
    }
  }
}
