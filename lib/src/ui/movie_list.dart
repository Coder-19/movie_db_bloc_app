import 'package:flutter/material.dart';
import 'package:movie_db_bloc_app/src/blocs/movie_bloc.dart';
import 'package:movie_db_bloc_app/src/models/item_model.dart';

// the code below is used to create the movie list screen of the app
class MovieList extends StatelessWidget {
  const MovieList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // using the bloc instance of the MovieBloc class to get the movies from the api
    bloc.fetchAllMovies();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Popular Movies'),
      ),
      body: StreamBuilder(
        stream: bloc.allMovies,
        builder: (context, AsyncSnapshot<ItemModel> snapshot){
          if(snapshot.hasData){
            return GridView.builder(
              itemCount: snapshot.data!.results.length,
                gridDelegate: const  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemBuilder: (context,index){
                  return Image.network(
                    "https://image.tmdb.org/t/p/w185${snapshot.data!.results[index].posterPath}",
                    fit: BoxFit.cover,
                  );
                },
            );
          } else if(snapshot.hasError){
            return Text(snapshot.error.toString());
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}

