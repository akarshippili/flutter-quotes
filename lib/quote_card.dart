import 'quotes.dart';
import 'package:flutter/material.dart';

class QuoteCard extends StatelessWidget {
  Quote quote;
  Function delete;
  QuoteCard({this.quote, this.delete});
  // {
  //   this.quote = quote;
  // }
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.black54,
              ),
            ),
            SizedBox(
              height: 2.0,
            ),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.black87,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            FlatButton.icon(
              onPressed: () {
                delete();
              },
              label: Text("Delete"),
              icon: Icon(Icons.delete_outline_sharp),
            )
          ],
        ),
      ),
    );
  }
}
