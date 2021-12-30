// the code below is used to create a class for getting the movie list from the api
import 'dart:convert';
import 'package:http/http.dart';
import 'package:movie_db_bloc_app/src/models/item_model.dart';

class MovieApiProvider{
  // the code below is used to create an instance of client
  Client client = Client();
  // the property below is used for saving the api key
  final String apiKey = "23f3cfeb24744030644679d7e92c7e83";

  // the code below is used to create a method to get the data from the api
  Future<ItemModel> getData() async {
    // the code below is used to get the response from the api
    Response response = await client.get(Uri.parse("http://api.themoviedb.org/3/movie/popular?api_key=$apiKey"));
    // the code below is used to check that if the status code is 200 then returning
    // the response
    if(response.statusCode == 200){
      // the code below is used to return the json data
      return ItemModel.fromJSON(jsonDecode(response.body));
    } else {
      // the code below is used to throw the error if it is unable to
      // get the data from the api
      throw Exception("Unable to load the data");
    }
  }
}