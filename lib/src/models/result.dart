// the code below is used to create a class for getting the properties to showing the
// details of the movie
class Result{
  // the property below is used to get the number of vote count
  int? _voteCount;
  // the property below is used to get the id of the result
  int? _id;
  // the property below is used to check that whether the video is avaiable or not
  bool? _video;
  // the property below is used to get the vote average
  var _voteAverage;
  // the property below is used to get the title of the result
  String? _title;
  // the property below is used to get the property rating
  double? _popularity;
  // the property below is used to get the posterPath
  String? _posterPath;
  // the property below is used to get the original Language
  String? _originalLanguage;
  // the property below is used to get the original title
  String? _originalTitle;
  // the property below is used to get the genreId of the movies
  List<int>? _genreIds = [];
  // the property below is used to get the backdrop path
  String? _backdropPath;
  // the code below is used to Check that whether the movie is for adults or not
  bool? _adult;
  // the property below is used to get the overview of movie
  String? _overview;
  // the property below is used to get the release date of the movie
  String? _releaseDate;

  // the code below is used to create a getter for release date
  String get releaseDate => _releaseDate!;

  // the code below is used to create a getter for overview
  String get overview => _overview!;

  // the code below is used to create a getter for adult
  bool get adult => _adult!;

  // the code below is used to create a getter for backdropPath
  String get backdropPath => _backdropPath!;

  // the code below is used to create a getter for genreId
  List<int> get genreIds => _genreIds!;

  // the code below is used to create a getter for the  originalTitle
  String get originalTitle => _originalTitle!;

  // the code below is used to create a getter for originalLanguage
  String get originalLanguage => _originalLanguage!;

  // the code below is used to create a getter for posterPath
  String get posterPath => _posterPath!;

  // the code below is used to create a getter for popularity
  double get popularity => _popularity!;

  // the code below is used to create a getter for title
  String get title => _title!;

  // the code below is used to create a getter for vote average
  double get voteAverage => _voteAverage!;

  // the code below is used to create a getter for video
  bool get video => _video!;

  // the code below is used to create a getter for id
  int get id => _id!;

  // the code below is used to create a getter for voteCount
  int get voteCount => _voteCount!;

  // the code below is used to create a constructor for the result class

  // the constructor below takes Map<String,dynamic> as input
  Result(Map<String,dynamic> json){
    _voteCount = json['vote_count'];
    _id = json['id'];
    _video = json['video'];
    _voteAverage = json['vote_average'];
    _title = json['title'];
    _popularity = json['popularity'];
    _posterPath = json['poster_path'];
    _originalLanguage = json['original_language'];
    _originalTitle = json['original_title'];
    for (int i = 0; i < json['genre_ids'].length; i++) {
      _genreIds!.add(json['genre_ids'][i]);
    }
    _backdropPath = json['backdrop_path'];
    _adult = json['adult'];
    _overview = json['overview'];
    _releaseDate = json['release_date'];
  }
}