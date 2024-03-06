import 'package:equatable/equatable.dart';

class CategoryEntity extends Equatable {
  final String id;
  final String name;

  const CategoryEntity({required this.id, required this.name});

  factory CategoryEntity.fromJson(Map<String, dynamic> json) {
    return CategoryEntity(
      id: json["id"],
      name: json["name"],
    );
  }
  Map<String, dynamic> toJson() {
    return {"id": id, "name": name};
  }

  @override
  List<Object?> get props => throw UnimplementedError();
}
