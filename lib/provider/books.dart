import 'dart:math';

import 'package:flutter/widgets.dart';
import 'package:mybooks/data/dummy_books.dart';
import 'package:mybooks/models/book.dart';

class Books with ChangeNotifier {
  final Map<String, Book> _items = {...DUMMY_BOOKS};

  List<Book> get all {
    return [..._items.values];
  }

  int get count {
    return _items.length;
  }

  Book byIndex(int i) {
    return _items.values.elementAt(i);
  }

  void put(Book book) {
    if (book == null) {
      return;
    }

    //adicionar
    final id = Random().nextDouble().toString();

    _items.putIfAbsent(
        id,
        () => Book(
              id: id,
              title: book.title,
              publisher: book.publisher,
              year: book.year,
              imageUrl: book.imageUrl,
            ));

    // alterar

    
    notifyListeners();
  }
}
