import 'package:deleteone/ScaleRoute.dart';
import 'package:flutter/material.dart';
import 'package:deleteone/FoodOrderPage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Bottom sheet'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      floatingActionButton: new FloatingActionButton(
        // onPressed: () {
        //   _settingModalBottomSheet(context);
        // },
        onPressed: () {
          Navigator.push(context, ScaleRoute(page: FoodOrderPage()));
        },
        child: new Icon(Icons.add),
      ),
    );
  }

}

void _settingModalBottomSheet(context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Container(
          child: new Wrap(
            children: <Widget>[
              Card(
                margin: EdgeInsets.all(7),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                  child: Row(
                    children: <Widget>[
                      CircleAvatar(backgroundColor: Colors.blueGrey),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text("370.00",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          SizedBox(height: 4),
                          Text("In Stock",
                              style: TextStyle(color: Colors.black54)),
                          Text("Selected: White",
                              style: TextStyle(color: Colors.black87)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              Divider(color: Colors.grey[300],height: 1.0),

              Flexible(
                child: Text('Some lengthy text for testing Some lengthy text for testing Some lengthy text for testing Some lengthy text for testing'),
              ),

              Divider(color: Colors.grey[300],height: 1.0),

              new Container(
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blueAccent)
                ),
                child: Text("Black")
              )


            ],
          ),
        );
      });

}