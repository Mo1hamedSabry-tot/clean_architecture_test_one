import 'package:get_it/get_it.dart';
import 'package:test_one/app/usecases/get_category_use_case.dart';
import 'package:test_one/domain/repo/category_repo.dart';
import 'package:test_one/infrastructure/datasource/base/base_category_datasource.dart';
import 'package:test_one/infrastructure/datasource/impl/category_datasource.dart';
import 'package:test_one/infrastructure/repo/category_repo_impl.dart';

GetIt sl = GetIt.instance;

Future<void> initDependencyInjection() async {
  
  sl.registerLazySingleton<BaseCategoryDatasource>(
    () => CategoryDatasource(),
  );
  sl.registerLazySingleton<CategoryRepo>(
    () => CategoryRepoImpl(
      baseCategoryDatasource: sl(),
    ),
  );
  sl.registerLazySingleton<GetCategoryBaseUsecase>(
    () => GetCategoryUsecase(
      categoryRepo: sl(),
    ),
  );
}
