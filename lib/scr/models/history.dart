import 'package:freezed_annotation/freezed_annotation.dart';
part 'history.freezed.dart';
part 'history.g.dart';

@freezed
class History with _$History {
  const factory History({
    @Default(0.00) double time,
    @Default(0.00) double value,
  }) = History$;

  factory History.fromJson(Map<dynamic, dynamic> json) => _$HistoryFromJson(Map<String, dynamic>.from(json));
}
