import 'package:flutter/material.dart';
import 'package:movie_db_bloc_app/src/ui/movie_list.dart';


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const MovieList(),
    );
  }
}
