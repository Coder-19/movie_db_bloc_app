// the code below is used to create a class to act as the repository
import 'package:movie_db_bloc_app/src/models/item_model.dart';
import 'package:movie_db_bloc_app/src/resources/movie_api_provider.dart';

class Repository{
  // the code below is used to create an instance of the MovieApiProvider
  final MovieApiProvider movieApiProvider = MovieApiProvider();

  // the code below is used to create a method for getting the movie data from the
  // api
  Future<ItemModel> fetchAllMovies() => movieApiProvider.getData();
  
}