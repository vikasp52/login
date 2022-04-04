// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'to_do.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ToDos _$ToDosFromJson(Map<String, dynamic> json) {
  return _ToDos.fromJson(json);
}

/// @nodoc
class _$ToDosTearOff {
  const _$ToDosTearOff();

  _ToDos call({required String title, required String description}) {
    return _ToDos(
      title: title,
      description: description,
    );
  }

  ToDos fromJson(Map<String, Object?> json) {
    return ToDos.fromJson(json);
  }
}

/// @nodoc
const $ToDos = _$ToDosTearOff();

/// @nodoc
mixin _$ToDos {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ToDosCopyWith<ToDos> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToDosCopyWith<$Res> {
  factory $ToDosCopyWith(ToDos value, $Res Function(ToDos) then) =
      _$ToDosCopyWithImpl<$Res>;
  $Res call({String title, String description});
}

/// @nodoc
class _$ToDosCopyWithImpl<$Res> implements $ToDosCopyWith<$Res> {
  _$ToDosCopyWithImpl(this._value, this._then);

  final ToDos _value;
  // ignore: unused_field
  final $Res Function(ToDos) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ToDosCopyWith<$Res> implements $ToDosCopyWith<$Res> {
  factory _$ToDosCopyWith(_ToDos value, $Res Function(_ToDos) then) =
      __$ToDosCopyWithImpl<$Res>;
  @override
  $Res call({String title, String description});
}

/// @nodoc
class __$ToDosCopyWithImpl<$Res> extends _$ToDosCopyWithImpl<$Res>
    implements _$ToDosCopyWith<$Res> {
  __$ToDosCopyWithImpl(_ToDos _value, $Res Function(_ToDos) _then)
      : super(_value, (v) => _then(v as _ToDos));

  @override
  _ToDos get _value => super._value as _ToDos;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_ToDos(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ToDos implements _ToDos {
  const _$_ToDos({required this.title, required this.description});

  factory _$_ToDos.fromJson(Map<String, dynamic> json) =>
      _$$_ToDosFromJson(json);

  @override
  final String title;
  @override
  final String description;

  @override
  String toString() {
    return 'ToDos(title: $title, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ToDos &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$ToDosCopyWith<_ToDos> get copyWith =>
      __$ToDosCopyWithImpl<_ToDos>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ToDosToJson(this);
  }
}

abstract class _ToDos implements ToDos {
  const factory _ToDos({required String title, required String description}) =
      _$_ToDos;

  factory _ToDos.fromJson(Map<String, dynamic> json) = _$_ToDos.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$ToDosCopyWith<_ToDos> get copyWith => throw _privateConstructorUsedError;
}
