import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
home: QuoteList(),


));
class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<String> quotes = [
    'Gun 1',
    'Gun 2',
    'Gun 3',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('GUNS'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,

      ),
      body: Column(
        children: quotes.map((quote) => Text(quote)).toList(),
      )
    );
  }
}
