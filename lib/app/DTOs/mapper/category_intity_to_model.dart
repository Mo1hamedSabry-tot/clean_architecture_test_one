import 'package:test_one/app/DTOs/category_model.dart';
import 'package:test_one/domain/entities/category_entity.dart';

// this class used to convert CategoryEntitiy to DTO [CategoryModel]

class CategoryEntityToModel {
  static CategoryModel categoryIntityToModel(CategoryEntity csategoryEntity) {
    return CategoryModel(
      id: csategoryEntity.id,
      name: csategoryEntity.name,
    );
  }
}
