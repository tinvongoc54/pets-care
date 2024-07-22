// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'walkthrough_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WalkthroughState {
  String get image => throw _privateConstructorUsedError;
  bool get isLastSlide => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WalkthroughStateCopyWith<WalkthroughState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalkthroughStateCopyWith<$Res> {
  factory $WalkthroughStateCopyWith(
          WalkthroughState value, $Res Function(WalkthroughState) then) =
      _$WalkthroughStateCopyWithImpl<$Res, WalkthroughState>;
  @useResult
  $Res call({String image, bool isLastSlide});
}

/// @nodoc
class _$WalkthroughStateCopyWithImpl<$Res, $Val extends WalkthroughState>
    implements $WalkthroughStateCopyWith<$Res> {
  _$WalkthroughStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? isLastSlide = null,
  }) {
    return _then(_value.copyWith(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      isLastSlide: null == isLastSlide
          ? _value.isLastSlide
          : isLastSlide // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WalkthroughStateImplCopyWith<$Res>
    implements $WalkthroughStateCopyWith<$Res> {
  factory _$$WalkthroughStateImplCopyWith(_$WalkthroughStateImpl value,
          $Res Function(_$WalkthroughStateImpl) then) =
      __$$WalkthroughStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String image, bool isLastSlide});
}

/// @nodoc
class __$$WalkthroughStateImplCopyWithImpl<$Res>
    extends _$WalkthroughStateCopyWithImpl<$Res, _$WalkthroughStateImpl>
    implements _$$WalkthroughStateImplCopyWith<$Res> {
  __$$WalkthroughStateImplCopyWithImpl(_$WalkthroughStateImpl _value,
      $Res Function(_$WalkthroughStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? isLastSlide = null,
  }) {
    return _then(_$WalkthroughStateImpl(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      isLastSlide: null == isLastSlide
          ? _value.isLastSlide
          : isLastSlide // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$WalkthroughStateImpl implements _WalkthroughState {
  const _$WalkthroughStateImpl(
      {this.image = AppAssets.img1, this.isLastSlide = false});

  @override
  @JsonKey()
  final String image;
  @override
  @JsonKey()
  final bool isLastSlide;

  @override
  String toString() {
    return 'WalkthroughState(image: $image, isLastSlide: $isLastSlide)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalkthroughStateImpl &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.isLastSlide, isLastSlide) ||
                other.isLastSlide == isLastSlide));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image, isLastSlide);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WalkthroughStateImplCopyWith<_$WalkthroughStateImpl> get copyWith =>
      __$$WalkthroughStateImplCopyWithImpl<_$WalkthroughStateImpl>(
          this, _$identity);
}

abstract class _WalkthroughState implements WalkthroughState {
  const factory _WalkthroughState(
      {final String image, final bool isLastSlide}) = _$WalkthroughStateImpl;

  @override
  String get image;
  @override
  bool get isLastSlide;
  @override
  @JsonKey(ignore: true)
  _$$WalkthroughStateImplCopyWith<_$WalkthroughStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
