import 'package:first_app/items.dart';
import 'package:flutter/material.dart';

class ItemManager extends StatefulWidget {
  final String startItem;
  ItemManager({this.startItem});

  @override
  State<StatefulWidget> createState() {
    return _ItemsManagerState();
  }
}

class _ItemsManagerState extends State<ItemManager> {
  List<String> items = [];
  int _counter = 0;
  @override
  void initState() {
    items.add(widget.startItem);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: EdgeInsets.all(10.0),
        child: RaisedButton(
          onPressed: () {
            setState(() {
              _counter++;
              items.add('otro $_counter');
              print(items);
            });
          },
          child: Text('Add card'),
        ),
      ),
      Expanded(
        /* child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Items(items);
          },
        ), */
        child: ListView(
          children: <Widget>[Items(items)],
        ),
      ),
    ]);
  }
}
