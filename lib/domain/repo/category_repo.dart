import 'package:test_one/core/types/types.dart';
import 'package:test_one/domain/entities/category_entity.dart';

abstract class CategoryRepo {
  FutureEitherFailureType<CategoryEntity> getCategory();
}
