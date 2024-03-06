import 'dart:developer';

import 'package:test_one/infrastructure/datasource/base/base_category_datasource.dart';

class CategoryDatasource extends BaseCategoryDatasource {
  @override
  Future<Map<String, dynamic>> getCategory() async {
    final Map<String, dynamic> response = {
      "data": [
        {
          "id": "1",
          "name": "first",
        },
        {
          "id": "2",
          "name": "second",
        },
        {
          "id": "3",
          "name": "third",
        },
        {
          "id": "4",
          "name": "fourth",
        }
      ]
    };
    log(response.toString());
    return response;
  }
}
