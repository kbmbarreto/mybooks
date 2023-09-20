import 'package:flutter/material.dart';
import 'package:mybooks/provider/books.dart';
import 'package:mybooks/views/book_list.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (ctx) => Books(),
      )
    ],
    child: MaterialApp(
      title: 'MyBooks',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BookList(),
    ),
    );
  }
}