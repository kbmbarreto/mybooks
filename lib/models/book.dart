import 'dart:ffi';

import 'package:flutter/material.dart';

class Book {
  final String id;
  final String title;
  final String publisher;
  final String year;
  final String imageUrl;

  const Book({
    required this.id,
    required this.title,
    required this.publisher,
    required this.year,
    required this.imageUrl,
  });
}
