import 'package:agoodplace/src/HomeWidget.dart';
import 'package:flutter/material.dart';

//import 'models/item.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'A GoodPlace',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: HomeWidget(),
    );
  }
}

/*class Home extends StatefulWidget {
  var itens = new List<Item>();
  Home() {
    itens = [];
    itens.add(Item(title: "Item 1", done: false));
    itens.add(Item(title: "Item 2", done: true));
    itens.add(Item(title: "Item 3", done: false));
  }
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('A GoodPlace'),
      ),
      body: ListView.builder(
        itemCount: widget.itens.length,
        itemBuilder: (BuildContext cxt, int index) {
          final item = widget.itens[index];
          return CheckboxListTile(
            title: Text(item.title),
            key: Key(item.title),
            value: item.done,
            onChanged: (value) {},
          );
        },
      ),
    );
  }
}
*/
