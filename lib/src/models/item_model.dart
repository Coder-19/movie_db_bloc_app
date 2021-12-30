// the code below is used to create a model class for getting the details of the items
import 'package:movie_db_bloc_app/src/models/result.dart';

class ItemModel{
  // property below is used to get the page number
  int? _page;
  // property below is used to get the total number of results
  int? _totalResults;
  // property below is used to get the total pages
  int? _totalPages;
  // the property below is used to get the  list of results
  // ignore: unused_field
  List<Result>? _results = [];

  // the code below is used to create a getter for page
 int get page => _page!;

 // the code below is used to create a getter for total_results
  int get totalResults => _totalResults!;

  // the code below is used to create a getter for totalPages
  int get totalPages => _totalPages!;

  //the code below is used to create a getter for getting the list of results
  List<Result> get results => _results!;


  // the code below is used to create a factory method for converting the
  // json data from api to dart object
  ItemModel.fromJSON(Map<String,dynamic> json){
    _page = json['page'];
    _totalPages = json['total_pages'];
    _totalResults = json['total_results'];

    // the code below is used to create a temporary list for getting the list of results
    List<Result> tempList = [];
    // the code below is used to traverse the json
    for(int index = 0;index < json["results"].length;index++){
      // the code below is used to pass the json to the Result constructor
      Result result = Result(json['results'][index]);
      // the code below is for adding the result to the list
      tempList.add(result);
    }
    // the code below is used to set the value of _results equal to tempList
    _results = tempList;
  }
}