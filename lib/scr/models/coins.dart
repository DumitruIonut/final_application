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
    @Default(0.00) double currentPrice,
    @Default(0.00) double marketCap,
    @Default(0.00) double marketCapRank,
    @Default(0.00) double fullyDilutedValuation,
    @Default(0.00) double totalVolume,
    @Default(0.00) double high24h,
    @Default(0.00) double low24h,
    @Default(0.00) double priceChange24h,
    @Default(0.00) double priceChangePercentage24h,
    @Default(0.00) double marketCapChange24h,
    @Default(0.00) double marketCapChangePercentage24h,
    @Default(0.00) double circulatingSupply,
    @Default(0.00) double totalSupply,
    @Default(0.00) double maxSupply,
    @Default(0.00) double ath,
    @Default(0.00) double athChangePercentage,
    @Default(' ') String athDate,
    @Default(0.00) double atl,
    @Default(0.00) double atlChangePercentage,
    @Default(' ') String atlDate,
    Object? roi,
    @Default(' ') String lastPpdated,
  }) = Coins$;

  factory Coins.fromJson(Map<dynamic, dynamic> json) => _$CoinsFromJson(Map<String, dynamic>.from(json));
}
