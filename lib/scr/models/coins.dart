import 'package:freezed_annotation/freezed_annotation.dart';
part 'coins.freezed.dart';
part 'coins.g.dart';

@freezed
class Coins with _$Coins {
  const factory Coins({
    @Default(' ') String id,
    @Default(' ') String symbol,
    @Default(' ') String name,
    @Default(' ') String image,
    @Default(0.00) double current_price,
    @Default(0.00) double market_cap,
    @Default(0.00) double market_cap_rank,
    @Default(0.00) double fully_diluted_valuation,
    @Default(0.00) double total_volume,
    @Default(0.00) double high_24h,
    @Default(0.00) double low_24h,
    @Default(0.00) double price_change_24h,
    @Default(0.00) double price_change_percentage_24h,
    @Default(0.00) double market_cap_change_24h,
    @Default(0.00) double market_cap_change_percentage_24h,
    @Default(0.00) double circulating_supply,
    @Default(0.00) double total_supply,
    @Default(0.00) double max_supply,
    @Default(0.00) double ath,
    @Default(0.00) double ath_change_percentage,
    @Default(' ') String ath_date,
    @Default(0.00) double atl,
    @Default(0.00) double atl_change_percentage,
    @Default(' ') String atl_date,
    Object? roi,
    @Default(' ') String last_updated,
  }) = Coins$;

  factory Coins.fromJson(Map<dynamic, dynamic> json) => _$CoinsFromJson(Map<String, dynamic>.from(json));
}
