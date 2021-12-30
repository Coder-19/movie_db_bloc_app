// the code below is used to create a bloc provider class
import 'package:movie_db_bloc_app/src/models/item_model.dart';
import 'package:movie_db_bloc_app/src/resources/movie_repository.dart';
import 'package:rxdart/rxdart.dart';

class MovieBloc{
  // the code below is used to create an instance of theRepository
  final Repository repository =  Repository();
  // the code below is used to create an instance of the publishSubject
  final PublishSubject<ItemModel> _movieFetcher = PublishSubject<ItemModel>();

  // the code below is used to create a getter of Observable<ItemModel> for getting
  // the stream from PublishSubject<ItemModel>
  Stream<ItemModel> get allMovies => _movieFetcher.stream;

  // the code below is used to create a method for getting the data from the api
  // and adding that to the stream
  fetchAllMovies() async {
    ItemModel itemModel = await repository.fetchAllMovies();
    _movieFetcher.sink.add(itemModel);
  }

  // the code below is used to dispose the movie fetcher stream
  dispose(){
    _movieFetcher.close();
  }

}


// the code below is used to create an instance of the MovieBloc
final bloc = MovieBloc();