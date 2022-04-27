// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bridge_generated.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ComplexEnum {
  Platform get field0 => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Platform field0) platform,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Platform field0)? platform,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Platform field0)? platform,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Platform value) platform,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Platform value)? platform,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Platform value)? platform,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ComplexEnumCopyWith<ComplexEnum> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComplexEnumCopyWith<$Res> {
  factory $ComplexEnumCopyWith(
          ComplexEnum value, $Res Function(ComplexEnum) then) =
      _$ComplexEnumCopyWithImpl<$Res>;
  $Res call({Platform field0});
}

/// @nodoc
class _$ComplexEnumCopyWithImpl<$Res> implements $ComplexEnumCopyWith<$Res> {
  _$ComplexEnumCopyWithImpl(this._value, this._then);

  final ComplexEnum _value;
  // ignore: unused_field
  final $Res Function(ComplexEnum) _then;

  @override
  $Res call({
    Object? field0 = freezed,
  }) {
    return _then(_value.copyWith(
      field0: field0 == freezed
          ? _value.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as Platform,
    ));
  }
}

/// @nodoc
abstract class $PlatformCopyWith<$Res> implements $ComplexEnumCopyWith<$Res> {
  factory $PlatformCopyWith(Platform value, $Res Function(Platform) then) =
      _$PlatformCopyWithImpl<$Res>;
  @override
  $Res call({Platform field0});
}

/// @nodoc
class _$PlatformCopyWithImpl<$Res> extends _$ComplexEnumCopyWithImpl<$Res>
    implements $PlatformCopyWith<$Res> {
  _$PlatformCopyWithImpl(Platform _value, $Res Function(Platform) _then)
      : super(_value, (v) => _then(v as Platform));

  @override
  Platform get _value => super._value as Platform;

  @override
  $Res call({
    Object? field0 = freezed,
  }) {
    return _then(Platform(
      field0 == freezed
          ? _value.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as Platform,
    ));
  }
}

/// @nodoc

class _$Platform implements Platform {
  const _$Platform(this.field0);

  @override
  final Platform field0;

  @override
  String toString() {
    return 'ComplexEnum.platform(field0: $field0)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Platform &&
            const DeepCollectionEquality().equals(other.field0, field0));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(field0));

  @JsonKey(ignore: true)
  @override
  $PlatformCopyWith<Platform> get copyWith =>
      _$PlatformCopyWithImpl<Platform>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Platform field0) platform,
  }) {
    return platform(field0);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Platform field0)? platform,
  }) {
    return platform?.call(field0);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Platform field0)? platform,
    required TResult orElse(),
  }) {
    if (platform != null) {
      return platform(field0);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Platform value) platform,
  }) {
    return platform(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Platform value)? platform,
  }) {
    return platform?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Platform value)? platform,
    required TResult orElse(),
  }) {
    if (platform != null) {
      return platform(this);
    }
    return orElse();
  }
}

abstract class Platform implements ComplexEnum {
  const factory Platform(final Platform field0) = _$Platform;

  @override
  Platform get field0 => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $PlatformCopyWith<Platform> get copyWith =>
      throw _privateConstructorUsedError;
}
