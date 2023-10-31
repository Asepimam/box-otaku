// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class SearchWigets extends StatefulWidget {
  const SearchWigets({Key? key}) : super(key: key);

  @override
  State<SearchWigets> createState() => _SearchWigetsState();
}

class _SearchWigetsState extends State<SearchWigets> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          width: 1.0,
          color: Colors.red,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 5.0,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search',
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(
              color: Colors.grey[300]!,
            ),
          ),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.blueGrey[900],
          ),
          suffixIcon: Container(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.sort,
              color: Colors.blueGrey[900],
            ),
          ),
        ),
      ),
    );
  }
}
