// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bloc_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeBlocData {
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get lastPrimeTime => throw _privateConstructorUsedError;
  String? get timeDifference => throw _privateConstructorUsedError;
  int? get primeNumber => throw _privateConstructorUsedError;

  /// Create a copy of HomeBlocData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeBlocDataCopyWith<HomeBlocData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeBlocDataCopyWith<$Res> {
  factory $HomeBlocDataCopyWith(
          HomeBlocData value, $Res Function(HomeBlocData) then) =
      _$HomeBlocDataCopyWithImpl<$Res, HomeBlocData>;
  @useResult
  $Res call(
      {DateTime? startDate,
      DateTime? lastPrimeTime,
      String? timeDifference,
      int? primeNumber});
}

/// @nodoc
class _$HomeBlocDataCopyWithImpl<$Res, $Val extends HomeBlocData>
    implements $HomeBlocDataCopyWith<$Res> {
  _$HomeBlocDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeBlocData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDate = freezed,
    Object? lastPrimeTime = freezed,
    Object? timeDifference = freezed,
    Object? primeNumber = freezed,
  }) {
    return _then(_value.copyWith(
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastPrimeTime: freezed == lastPrimeTime
          ? _value.lastPrimeTime
          : lastPrimeTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      timeDifference: freezed == timeDifference
          ? _value.timeDifference
          : timeDifference // ignore: cast_nullable_to_non_nullable
              as String?,
      primeNumber: freezed == primeNumber
          ? _value.primeNumber
          : primeNumber // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeBlocDataImplCopyWith<$Res>
    implements $HomeBlocDataCopyWith<$Res> {
  factory _$$HomeBlocDataImplCopyWith(
          _$HomeBlocDataImpl value, $Res Function(_$HomeBlocDataImpl) then) =
      __$$HomeBlocDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime? startDate,
      DateTime? lastPrimeTime,
      String? timeDifference,
      int? primeNumber});
}

/// @nodoc
class __$$HomeBlocDataImplCopyWithImpl<$Res>
    extends _$HomeBlocDataCopyWithImpl<$Res, _$HomeBlocDataImpl>
    implements _$$HomeBlocDataImplCopyWith<$Res> {
  __$$HomeBlocDataImplCopyWithImpl(
      _$HomeBlocDataImpl _value, $Res Function(_$HomeBlocDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeBlocData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDate = freezed,
    Object? lastPrimeTime = freezed,
    Object? timeDifference = freezed,
    Object? primeNumber = freezed,
  }) {
    return _then(_$HomeBlocDataImpl(
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastPrimeTime: freezed == lastPrimeTime
          ? _value.lastPrimeTime
          : lastPrimeTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      timeDifference: freezed == timeDifference
          ? _value.timeDifference
          : timeDifference // ignore: cast_nullable_to_non_nullable
              as String?,
      primeNumber: freezed == primeNumber
          ? _value.primeNumber
          : primeNumber // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$HomeBlocDataImpl implements _HomeBlocData {
  const _$HomeBlocDataImpl(
      {this.startDate,
      this.lastPrimeTime,
      this.timeDifference,
      this.primeNumber});

  @override
  final DateTime? startDate;
  @override
  final DateTime? lastPrimeTime;
  @override
  final String? timeDifference;
  @override
  final int? primeNumber;

  @override
  String toString() {
    return 'HomeBlocData(startDate: $startDate, lastPrimeTime: $lastPrimeTime, timeDifference: $timeDifference, primeNumber: $primeNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeBlocDataImpl &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.lastPrimeTime, lastPrimeTime) ||
                other.lastPrimeTime == lastPrimeTime) &&
            (identical(other.timeDifference, timeDifference) ||
                other.timeDifference == timeDifference) &&
            (identical(other.primeNumber, primeNumber) ||
                other.primeNumber == primeNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, startDate, lastPrimeTime, timeDifference, primeNumber);

  /// Create a copy of HomeBlocData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeBlocDataImplCopyWith<_$HomeBlocDataImpl> get copyWith =>
      __$$HomeBlocDataImplCopyWithImpl<_$HomeBlocDataImpl>(this, _$identity);
}

abstract class _HomeBlocData implements HomeBlocData {
  const factory _HomeBlocData(
      {final DateTime? startDate,
      final DateTime? lastPrimeTime,
      final String? timeDifference,
      final int? primeNumber}) = _$HomeBlocDataImpl;

  @override
  DateTime? get startDate;
  @override
  DateTime? get lastPrimeTime;
  @override
  String? get timeDifference;
  @override
  int? get primeNumber;

  /// Create a copy of HomeBlocData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeBlocDataImplCopyWith<_$HomeBlocDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
