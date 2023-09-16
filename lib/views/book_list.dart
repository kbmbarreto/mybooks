import 'package:flutter/material.dart';
import 'package:mybooks/components/book_title.dart';
import 'package:mybooks/data/dummy_books.dart';

class BookList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final books = {...DUMMY_BOOKS};

    return Scaffold(
        appBar: AppBar(
          title: Text('Minha biblioteca'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {},
            )
          ],
        ),
        body: ListView.builder(
          itemCount: books.length,
          itemBuilder: (ctx, i) => BookTitle(books.values.elementAt(i)),
        ));
  }
}
