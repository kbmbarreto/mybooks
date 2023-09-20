import 'package:flutter/material.dart';
import 'package:mybooks/components/book_title.dart';
import 'package:mybooks/models/book.dart';
import 'package:mybooks/provider/books.dart';
import 'package:provider/provider.dart';

class BookList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Books books = Provider.of(context, listen: false);

    return Scaffold(
        appBar: AppBar(
          title: Text('Minha biblioteca'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                books.put(Book(
                  id: '100',
                  title: 'Livro 1',
                  publisher: 'Editora 1',
                  year: '2021',
                  imageUrl: 'https://images.com.br/1.jpg',
                ));
              },
            )
          ],
        ),
        body: ListView.builder(
          itemCount: books.count,
          itemBuilder: (ctx, i) => BookTitle(books.byIndex(i)),
        ));
  }
}
