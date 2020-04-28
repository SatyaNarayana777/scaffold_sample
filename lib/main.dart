import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//void main() => runApp(MyApp());

/*void main() => runApp(
  Container(
    color: Colors.cyan,
    child: Center(child: Text("Hello world",textDirection: TextDirection.ltr,style: TextStyle(color: Colors.deepOrange,fontSize: 25.0),)),
  )
);*/

void main() => runApp(MyAppNarWidget());

class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyan,
      child: Center(
          child: Text(
        "Hello world",
        textDirection: TextDirection.ltr,
        style: TextStyle(color: Colors.deepOrange, fontSize: 25.0),
      )),
    );
  }
}

class MyStatefullWidget extends StatefulWidget {
  @override
  _MyStatefullWidgetState createState() => _MyStatefullWidgetState();
}

class _MyStatefullWidgetState extends State<MyStatefullWidget> {
  var myColour = Colors.yellow;

  void onClick() {
    setState(() {
      myColour = Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        color: myColour,
        child: Center(
          child: RaisedButton(
            child: Text(
              "Button",
              textDirection: TextDirection.ltr,
            ),
            onPressed: () {
              onClick();
            },
          ),
        ),
      ),
    );
  }
}

class MyListWidget extends StatefulWidget {
  @override
  _MyListWidgetState createState() => _MyListWidgetState();
}

class _MyListWidgetState extends State<MyListWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Text(
              "Name 1",
              textDirection: TextDirection.ltr,
            ),
            Text(
              "Name 2",
              textDirection: TextDirection.ltr,
            ),
            Text(
              "Name 3",
              textDirection: TextDirection.ltr,
            ),
            Row(
              textDirection: TextDirection.ltr,
              children: <Widget>[
                Text(
                  "Row 1",
                  textDirection: TextDirection.ltr,
                ),
                Text(
                  "Row 2",
                  textDirection: TextDirection.ltr,
                ),
                Text(
                  "Row 3",
                  textDirection: TextDirection.ltr,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MyCardsListWidget extends StatefulWidget {
  @override
  _MyCardsListWidgetState createState() => _MyCardsListWidgetState();
}

class _MyCardsListWidgetState extends State<MyCardsListWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        color: Colors.green,
        child: Padding(
          padding: EdgeInsets.only(top: 40.0,left: 4.0,right: 4.0,bottom: 4.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(4.0),
                child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        textDirection: TextDirection.ltr,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.account_circle),
                            onPressed: (){

                            },
                          ),
                          Expanded(child: Text("Name 1",textDirection: TextDirection.ltr,),),
                          Expanded(child: Text("Name 2",textDirection: TextDirection.ltr,),flex: 2,),
                          Text("Name 3",textDirection: TextDirection.ltr,),
                        ],
                      ),
                    )
                ),
              ),
              Padding(
                padding: EdgeInsets.all(4.0),
                child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        textDirection: TextDirection.ltr,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.account_circle),
                            onPressed: (){

                            },
                          ),
                          Text("Name 1",textDirection: TextDirection.ltr,),
                          Text("Name 2",textDirection: TextDirection.ltr,),
                          Text("Name 3",textDirection: TextDirection.ltr,),
                        ],
                      ),
                    )
                ),
              ),
              Padding(
                padding: EdgeInsets.all(4.0),
                child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        textDirection: TextDirection.ltr,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.account_circle),
                            onPressed: (){

                            },
                          ),
                          Text("Name 1",textDirection: TextDirection.ltr,),
                          Text("Name 2",textDirection: TextDirection.ltr,),
                          Text("Name 3",textDirection: TextDirection.ltr,),
                        ],
                      ),
                    )
                ),
              ),
              Image(
                image: AssetImage("images/lion.jpg"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyAppNarWidget extends StatefulWidget {
  @override
  _MyAppNarWidgetState createState() => _MyAppNarWidgetState();
}

class _MyAppNarWidgetState extends State<MyAppNarWidget> {

  bool isChecked = true;
  int gender = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.green,
        accentColor: Colors.blueGrey
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("MY App Bar"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.message),
              onPressed: (){
                print("Message");
              },
            ),IconButton(
              icon: Icon(Icons.local_grocery_store),
              onPressed: (){
                print("Cart");
              },
            ),
          ],
        ),
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Image(image: AssetImage("images/header_image.jpg"),),
                  Padding(
                    padding: EdgeInsets.only(top:30.0,left: 10.0),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("images/lion.jpg"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:100.0,left:10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Employee Name",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                        Text("Employee Email",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.normal),),
                      ],
                    ),
                  )
                ],
              ),
              ListView(
                shrinkWrap: true,
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.add),
                    title: Text("Create"),
                    onTap: (){},
                  ),
                  ListTile(
                    leading: Icon(Icons.message),
                    title: Text("Message"),
                    onTap: (){},
                  ),
                  ListTile(
                    leading: Icon(Icons.print),
                    title: Text("Print"),
                    onTap: (){},
                  ),
                ],
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){

          },
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                icon: Icon(Icons.person),
                labelText:"Enter Email",
                ),
                onChanged: (input) {
                  print(input);
                },
              ),
            ),
            Checkbox(
              value: isChecked,
              onChanged: (bool value){
                setState(() {
                  print(value);
                  isChecked = value;
                });
              },
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio(
                  value: 1,
                  groupValue: gender,
                  onChanged: (int value){
                    setState(() {
                      gender = value;
                    });
                  },
                ),
                Radio(
                  value: 2,
                  groupValue: gender,
                  onChanged: (int value){
                    setState(() {
                      gender = value;
                    });
                  },
                ),
                Radio(
                  value: 3,
                  groupValue: gender,
                  onChanged: (int value){
                    setState(() {
                      gender = value;
                    });
                  },
                ),
              ],
            )
          ],
        ),
      ),

    );
  }
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
