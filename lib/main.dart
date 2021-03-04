import 'package:flutter/material.dart';
import 'quotes.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
    home: Quotelist(),
  ));
}

class Quotelist extends StatefulWidget {
  @override
  _QuotelistState createState() => _QuotelistState();
}

class _QuotelistState extends State<Quotelist> {
  List<Quote> quotes = [
    Quote(
        text: 'Be yourself; everyone else is already taken',
        author: "osca wilde"),
    Quote(
        text: 'I have nothing to declare except my genius',
        author: "osca wilde"),
    Quote(
        text: 'The truth is rarely pure and never simple',
        author: "osca wilde"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text("Awesome Quotes"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: quotes
            .map((e) => QuoteCard(
                  quote: e,
                  delete: () {
                    setState(() {
                      quotes.remove(e);
                    });
                  },
                ))
            .toList(),
      ),
    );
  }
}







// class NinjaCard extends StatefulWidget {
//   @override
//   _NinjaCardState createState() => _NinjaCardState();
// }

// class _NinjaCardState extends State<NinjaCard> {
//   int ninjaLevel = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[900],
//       appBar: AppBar(
//         title: Text("Ninja ID card"),
//         centerTitle: true,
//         backgroundColor: Colors.grey[850],
//         elevation: 0.0,
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.add),
//         backgroundColor: Colors.grey[800],
//         onPressed: () {
//           setState(() {
//             ninjaLevel++;
//           });
//         },
//       ),
//       body: Padding(
//         padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Center(
//               child: CircleAvatar(
//                 backgroundImage: AssetImage('assets/groot.png'),
//                 radius: 40.0,
//               ),
//             ),
//             Divider(
//               height: 60.0,
//               color: Colors.grey[800],
//             ),
//             Text(
//               "Name",
//               style: TextStyle(
//                 color: Colors.grey,
//                 letterSpacing: 2.0,
//               ),
//             ),
//             SizedBox(
//               height: 10.0,
//             ),
//             Text(
//               "Chun-li",
//               style: TextStyle(
//                 color: Colors.amberAccent[200],
//                 letterSpacing: 2.0,
//                 fontSize: 28.0,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(
//               height: 30.0,
//             ),
//             Text(
//               "Current Ninja Level",
//               style: TextStyle(
//                 color: Colors.grey,
//                 letterSpacing: 2.0,
//               ),
//             ),
//             SizedBox(
//               height: 10.0,
//             ),
//             Text(
//               "$ninjaLevel",
//               style: TextStyle(
//                 color: Colors.amberAccent[200],
//                 letterSpacing: 2.0,
//                 fontSize: 28.0,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(
//               height: 30.0,
//             ),
//             Row(
//               children: [
//                 Icon(
//                   Icons.email_outlined,
//                   color: Colors.grey[300],
//                 ),
//                 SizedBox(
//                   width: 10.0,
//                 ),
//                 Text(
//                   "Chun_li@gmail.com",
//                   style: TextStyle(
//                     color: Colors.grey[300],
//                     fontSize: 18.0,
//                     letterSpacing: 1.0,
//                   ),
//                 )
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
