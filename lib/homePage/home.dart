import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "First Flutter App",
        home: Scaffold(
            appBar: AppBar(
                title: Text("Stateless Flutter App"),
                backgroundColor: Colors.lightBlueAccent),
            body: Builder(
                builder: (ctx) => Material(
                    color: Colors.white,
                    child: Column(children: <Widget>[
                      headBox(),
                      listContainer(),
                      RaisedButton(
                        child: Text("Press Here !"),
                        color: Colors.lightBlueAccent,
                        textColor: Colors.white,
                        splashColor: Colors.lightBlue,
                        onPressed: () {
                          buttonPressed(ctx);
                        },
                      ),
                    ])))));
  }
}

class headBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topCenter,
        decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: new BorderRadius.all(const Radius.circular(20.0))),
        height: 100,
        margin: EdgeInsets.only(top: 10, left: 10, right: 10),
        child: Text("Hi there",
            textAlign: TextAlign.center, style: TextStyle(fontSize: 30)));
  }
}

class listContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: new BorderRadius.all(const Radius.circular(20.0))),
      height: 400,
      margin: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 20),
      child: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.landscape),
            title: Text("Landscape"),
            subtitle: Text("Description goes here"),
            trailing: Icon(Icons.wb_sunny),
          ),
          ListTile(
            leading: Icon(Icons.landscape),
            title: Text("Landscape"),
            subtitle: Text("Description goes here"),
            trailing: Icon(Icons.wb_sunny),
          ),
          ListTile(
            leading: Icon(Icons.landscape),
            title: Text("Landscape"),
            subtitle: Text("Description goes here"),
            trailing: Icon(Icons.wb_sunny),
          ),
          ListTile(
            leading: Icon(Icons.landscape),
            title: Text("Landscape"),
            subtitle: Text("Description goes here"),
            trailing: Icon(Icons.wb_sunny),
          ),
          ListTile(
            leading: Icon(Icons.landscape),
            title: Text("Landscape"),
            subtitle: Text("Description goes here"),
            trailing: Icon(Icons.wb_sunny),
          ),
          ListTile(
            leading: Icon(Icons.landscape),
            title: Text("Landscape"),
            subtitle: Text("Description goes here"),
            trailing: Icon(Icons.wb_sunny),
          ),
          ListTile(
            leading: Icon(Icons.landscape),
            title: Text("Landscape"),
            subtitle: Text("Description goes here"),
            trailing: Icon(Icons.wb_sunny),
          ),
        ],
      ),
    );
  }
}

void buttonPressed(BuildContext context) {
  var snackBar = SnackBar(
    content: Text("You pressed the button"),
    action: SnackBarAction(
        label: "X",
        onPressed: () {
          debugPrint('Closing snackbar');
        }),
  );
  Scaffold.of(context).showSnackBar(snackBar);
}

List<String> getListViewElements() {
  var items = List<String>.generate(10, (counter) => "Item $counter");
  return items;
}

Widget getListView() {
  var listItems = getListViewElements();

  var listView = ListView.builder(itemBuilder: (context, index) {
    return ListTile(
      title: Text(listItems[index]),
    );
  });
}
