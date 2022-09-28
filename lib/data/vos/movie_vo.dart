import 'package:json_annotation/json_annotation.dart';

part 'movie_vo.g.dart';

@JsonSerializable()
class MovieVO{
  @JsonKey(name: "adult")
  bool? adult;
  @JsonKey(name: "backdrop_path")
  String? backdropPath;
  @JsonKey(name: "genre_ids")
  List<int>? genreIds;
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "original_language")
  String? originalLanguage;
  @JsonKey(name: "original_title")
  String? originalTitle;
  @JsonKey(name: "overview")
  String? overview;
  @JsonKey(name: "popularity")
  String? popularity;
  @JsonKey(name: "poster_path")
  String? posterPath;
  @JsonKey(name: "release_date")
  String? releaseDate;
  @JsonKey(name: "title")
  String? title;
  @JsonKey(name: "video")
  bool? video;
  @JsonKey(name: "vote_average")
  int? voteAverage;
  @JsonKey(name: "vote_count")
  int? voteCount;

  MovieVO(
      this.adult,
      this.backdropPath,
      this.genreIds,
      this.id,
      this.originalLanguage,
      this.originalTitle,
      this.overview,
      this.popularity,
      this.posterPath,
      this.releaseDate,
      this.title,
      this.video,
      this.voteAverage,
      this.voteCount);

  factory MovieVO.fromJson(Map<String, dynamic> data)=> _$MovieVOFromJson(data);
  Map<String,dynamic> toJson()=> _$MovieVOToJson(this);
}
//"adult": false,
// 			"backdrop_path": "/5GA3vV1aWWHTSDO5eno8V5zDo8r.jpg",
// 			"genre_ids": [
// 				27,
// 				53
// 			],
// 			"id": 760161,
// 			"original_language": "en",
// 			"original_title": "Orphan: First Kill",
// 			"overview": "After escaping from an Estonian psychiatric facility, Leena Klammer travels to America by impersonating Esther, the missing daughter of a wealthy family. But when her mask starts to slip, she is put against a mother who will protect her family from the murderous “child” at any cost.",
// 			"popularity": 7511.784,
// 			"poster_path": "/wSqAXL1EHVJ3MOnJzMhUngc8gFs.jpg",
// 			"release_date": "2022-07-27",
// 			"title": "Orphan: First Kill",
// 			"video": false,
// 			"vote_average": 7,
// 			"vote_count": 732