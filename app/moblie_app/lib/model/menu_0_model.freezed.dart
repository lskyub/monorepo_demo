// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'menu_0_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Menu0Model _$Menu0ModelFromJson(Map<String, dynamic> json) {
  return _Menu0Model.fromJson(json);
}

/// @nodoc
mixin _$Menu0Model {
  List<int> get datas => throw _privateConstructorUsedError;
  int get step => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;

  /// Serializes this Menu0Model to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Menu0Model
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $Menu0ModelCopyWith<Menu0Model> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Menu0ModelCopyWith<$Res> {
  factory $Menu0ModelCopyWith(
          Menu0Model value, $Res Function(Menu0Model) then) =
      _$Menu0ModelCopyWithImpl<$Res, Menu0Model>;
  @useResult
  $Res call({List<int> datas, int step, int index});
}

/// @nodoc
class _$Menu0ModelCopyWithImpl<$Res, $Val extends Menu0Model>
    implements $Menu0ModelCopyWith<$Res> {
  _$Menu0ModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Menu0Model
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datas = null,
    Object? step = null,
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      datas: null == datas
          ? _value.datas
          : datas // ignore: cast_nullable_to_non_nullable
              as List<int>,
      step: null == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as int,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Menu0ModelImplCopyWith<$Res>
    implements $Menu0ModelCopyWith<$Res> {
  factory _$$Menu0ModelImplCopyWith(
          _$Menu0ModelImpl value, $Res Function(_$Menu0ModelImpl) then) =
      __$$Menu0ModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<int> datas, int step, int index});
}

/// @nodoc
class __$$Menu0ModelImplCopyWithImpl<$Res>
    extends _$Menu0ModelCopyWithImpl<$Res, _$Menu0ModelImpl>
    implements _$$Menu0ModelImplCopyWith<$Res> {
  __$$Menu0ModelImplCopyWithImpl(
      _$Menu0ModelImpl _value, $Res Function(_$Menu0ModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of Menu0Model
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datas = null,
    Object? step = null,
    Object? index = null,
  }) {
    return _then(_$Menu0ModelImpl(
      datas: null == datas
          ? _value._datas
          : datas // ignore: cast_nullable_to_non_nullable
              as List<int>,
      step: null == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as int,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Menu0ModelImpl implements _Menu0Model {
  _$Menu0ModelImpl(
      {required final List<int> datas, this.step = 0, this.index = 0})
      : _datas = datas;

  factory _$Menu0ModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$Menu0ModelImplFromJson(json);

  final List<int> _datas;
  @override
  List<int> get datas {
    if (_datas is EqualUnmodifiableListView) return _datas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_datas);
  }

  @override
  @JsonKey()
  final int step;
  @override
  @JsonKey()
  final int index;

  @override
  String toString() {
    return 'Menu0Model(datas: $datas, step: $step, index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Menu0ModelImpl &&
            const DeepCollectionEquality().equals(other._datas, _datas) &&
            (identical(other.step, step) || other.step == step) &&
            (identical(other.index, index) || other.index == index));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_datas), step, index);

  /// Create a copy of Menu0Model
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Menu0ModelImplCopyWith<_$Menu0ModelImpl> get copyWith =>
      __$$Menu0ModelImplCopyWithImpl<_$Menu0ModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Menu0ModelImplToJson(
      this,
    );
  }
}

abstract class _Menu0Model implements Menu0Model {
  factory _Menu0Model(
      {required final List<int> datas,
      final int step,
      final int index}) = _$Menu0ModelImpl;

  factory _Menu0Model.fromJson(Map<String, dynamic> json) =
      _$Menu0ModelImpl.fromJson;

  @override
  List<int> get datas;
  @override
  int get step;
  @override
  int get index;

  /// Create a copy of Menu0Model
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Menu0ModelImplCopyWith<_$Menu0ModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}