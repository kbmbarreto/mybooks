import 'package:flutter/material.dart';
import 'package:mybooks/models/book.dart';

class BookTitle extends StatelessWidget {
  final Book book;

  const BookTitle(this.book);

  @override
  Widget build(BuildContext context) {
    final image = book.imageUrl == null || book.imageUrl.isEmpty
        ? CircleAvatar(child: Icon(Icons.book))
        : CircleAvatar(backgroundImage: NetworkImage(book.imageUrl));

    return ListTile(
      leading: image,
      title: Text(book.title),
      subtitle: Text(book.publisher),
      trailing: Container(
        width: 100,
        child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.edit),
            color: Colors.orange,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.delete),
            color: Colors.red,
            onPressed: () {},
          ),
        ],
      ),
      ),
    );
  }
}
