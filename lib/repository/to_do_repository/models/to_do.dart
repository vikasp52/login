import 'package:freezed_annotation/freezed_annotation.dart';

part 'to_do.freezed.dart';
part 'to_do.g.dart';

@freezed
class ToDos with _$ToDos {
  const factory ToDos({
    required String title,
    required String description,
  }) = _ToDos;

  factory ToDos.fromJson(Map<String, dynamic> json) => _$ToDosFromJson(json);
}
