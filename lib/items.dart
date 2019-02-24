import 'package:flutter/material.dart';

class Items extends StatelessWidget {
  List<String> items;

  Items(this.items) {
    print('constructo');
  }

  @override
  Widget build(BuildContext context) {
    print('bld');
    return Column(
      children: items
          .map((element) => Card(
                child: Column(
                  children: <Widget>[
                    Image.network(
                      'https://picsum.photos/250?random',
                      fit: BoxFit.cover,
                      alignment: Alignment.center,
                    ),
                    ListTile(
                      leading: Icon(Icons.album),
                      title: Text("Card $element "),
                      subtitle:
                          Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                    ),
                    ButtonTheme.bar(
                      // make buttons use the appropriate styles for cards
                      child: ButtonBar(
                        children: <Widget>[
                          FlatButton(
                            child: const Text('BUY TICKETS'),
                            onPressed: () {/* ... */},
                          ),
                          FlatButton(
                            child: const Text('LISTEN'),
                            onPressed: () {/* ... */},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ))
          .toList(),
    );
  }
}
