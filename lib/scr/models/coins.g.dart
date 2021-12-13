// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coins.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Coins$ _$$Coins$FromJson(Map<String, dynamic> json) => _$Coins$(
      id: json['id'] as String? ?? ' ',
      symbol: json['symbol'] as String? ?? ' ',
      name: json['name'] as String? ?? ' ',
      image: json['image'] as String? ?? ' ',
      currentPrice: (json['currentPrice'] as num?)?.toDouble() ?? 0.0,
      marketCap: (json['marketCap'] as num?)?.toDouble() ?? 0.0,
      marketCapRank: (json['marketCapRank'] as num?)?.toDouble() ?? 0.0,
      fullyDilutedValuation: (json['fullyDilutedValuation'] as num?)?.toDouble() ?? 0.0,
      totalVolume: (json['totalVolume'] as num?)?.toDouble() ?? 0.0,
      high24h: (json['high24h'] as num?)?.toDouble() ?? 0.0,
      low24h: (json['low24h'] as num?)?.toDouble() ?? 0.0,
      priceChange24h: (json['priceChange24h'] as num?)?.toDouble() ?? 0.0,
      priceChangePercentage24h: (json['priceChangePercentage24h'] as num?)?.toDouble() ?? 0.0,
      marketCapChange24h: (json['marketCapChange24h'] as num?)?.toDouble() ?? 0.0,
      marketCapChangePercentage24h: (json['marketCapChangePercentage24h'] as num?)?.toDouble() ?? 0.0,
      circulatingSupply: (json['circulatingSupply'] as num?)?.toDouble() ?? 0.0,
      totalSupply: (json['totalSupply'] as num?)?.toDouble() ?? 0.0,
      maxSupply: (json['maxSupply'] as num?)?.toDouble() ?? 0.0,
      ath: (json['ath'] as num?)?.toDouble() ?? 0.0,
      athChangePercentage: (json['athChangePercentage'] as num?)?.toDouble() ?? 0.0,
      athDate: json['athDate'] as String? ?? ' ',
      atl: (json['atl'] as num?)?.toDouble() ?? 0.0,
      atlChangePercentage: (json['atlChangePercentage'] as num?)?.toDouble() ?? 0.0,
      atlDate: json['atlDate'] as String? ?? ' ',
      roi: json['roi'],
      lastPpdated: json['lastPpdated'] as String? ?? ' ',
    );

Map<String, dynamic> _$$Coins$ToJson(_$Coins$ instance) => <String, dynamic>{
      'id': instance.id,
      'symbol': instance.symbol,
      'name': instance.name,
      'image': instance.image,
      'currentPrice': instance.currentPrice,
      'marketCap': instance.marketCap,
      'marketCapRank': instance.marketCapRank,
      'fullyDilutedValuation': instance.fullyDilutedValuation,
      'totalVolume': instance.totalVolume,
      'high24h': instance.high24h,
      'low24h': instance.low24h,
      'priceChange24h': instance.priceChange24h,
      'priceChangePercentage24h': instance.priceChangePercentage24h,
      'marketCapChange24h': instance.marketCapChange24h,
      'marketCapChangePercentage24h': instance.marketCapChangePercentage24h,
      'circulatingSupply': instance.circulatingSupply,
      'totalSupply': instance.totalSupply,
      'maxSupply': instance.maxSupply,
      'ath': instance.ath,
      'athChangePercentage': instance.athChangePercentage,
      'athDate': instance.athDate,
      'atl': instance.atl,
      'atlChangePercentage': instance.atlChangePercentage,
      'atlDate': instance.atlDate,
      'roi': instance.roi,
      'lastPpdated': instance.lastPpdated,
    };
