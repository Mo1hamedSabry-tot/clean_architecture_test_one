import 'package:dartz/dartz.dart';
import 'package:test_one/app/DTOs/category_model.dart';
import 'package:test_one/core/types/types.dart';
import 'package:test_one/domain/repo/category_repo.dart';

import '../DTOs/mapper/category_intity_to_model.dart';

abstract class GetCategoryBaseUsecase {
  FutureEitherFailureType<CategoryModel> execute();
}

class GetCategoryUsecase extends GetCategoryBaseUsecase {
  final CategoryRepo _categoryRepo;

  GetCategoryUsecase({
    required CategoryRepo categoryRepo,
  }) : _categoryRepo = categoryRepo;
  @override
  FutureEitherFailureType<CategoryModel> execute() async {
    final res = await _categoryRepo.getCategory();
    return res.fold(
      (l) {
        return Left(l);
      },
      (r) {
        final model = CategoryEntityToModel.categoryIntityToModel(r);

        //? here my validate
        //? ex.

        //  if(model.id>0){
        //    todo
        //  }
        return Right(
          model,
        );
      },
    );
  }
}
