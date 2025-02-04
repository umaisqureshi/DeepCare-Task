import 'package:freezed_annotation/freezed_annotation.dart';
part 'bloc_data.freezed.dart';

@freezed
sealed class HomeBlocData with _$HomeBlocData {
  const factory HomeBlocData({
    DateTime? startDate,
    DateTime? lastPrimeTime,
    String? timeDifference,
    int? primeNumber,
  }) = _HomeBlocData;
}
