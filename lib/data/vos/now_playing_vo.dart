import 'package:json_annotation/json_annotation.dart';
import 'package:moviedp/data/vos/movie_vo.dart';
import 'date_vo.dart';


part 'now_playing_vo.g.dart';

@JsonSerializable()
class NowPlayingVO{

  @JsonKey(name: "dates")
  DateVO? dates;

  @JsonKey(name: "page")
  int? page;

  @JsonKey(name: "results")
  List<MovieVO>? results;


  NowPlayingVO(this.dates, this.page, this.results);

  factory NowPlayingVO.fromJson(Map<String,dynamic> data) => _$NowPlayingVOFromJson(data);
  Map<String, dynamic> toJson()=> _$NowPlayingVOToJson(this);

}