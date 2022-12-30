// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'now_playing_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NowPlayingVO _$NowPlayingVOFromJson(Map<String, dynamic> json) => NowPlayingVO(
      json['dates'] == null
          ? null
          : DateVO.fromJson(json['dates'] as Map<String, dynamic>),
      json['page'] as int?,
      (json['results'] as List<dynamic>?)
          ?.map((e) => MovieVO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$NowPlayingVOToJson(NowPlayingVO instance) =>
    <String, dynamic>{
      'dates': instance.dates,
      'page': instance.page,
      'results': instance.results,
    };
