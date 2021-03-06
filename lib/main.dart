import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
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
        primarySwatch: Colors.red,
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
      body: Padding(padding: const EdgeInsets.all(60.0),


      child: Column(
        children: <Widget> [


          SizedBox(height: 60,),
          Text(
            "CONTACT US",
            style: TextStyle(
              fontSize: 25,
            ),

          ),
          SizedBox(height: 20,),
          Text(
            "Email",
            style: TextStyle(
              fontSize: 25,
            ),

          ),

          TextFormField(
            decoration: InputDecoration(
                labelText: ''
            ),
          ),


          SizedBox(height: 20,),
          Text(
            "Phone",
            style: TextStyle(
              fontSize: 25,
            ),

          ),

          TextFormField(
            decoration: InputDecoration(
                labelText: ''
            ),
          ),

          SizedBox(height: 20,),
          Text(
            "masage",
            style: TextStyle(
              fontSize: 25,
            ),

          ),
          SizedBox(height: 60,),
          TextFormField(
            decoration: InputDecoration(
                labelText: ''
            ),
          ),
          SizedBox(height: 10,),
         Row(
           children: <Widget>[

             Checkbox(value: false, onChanged: (bool value){
               print(value);


             }),
             Text(
               "send a copy to youself",
               style: TextStyle(
                 fontSize: 15,
               ),

             ),


           ],


         ),
          Row(
            children: <Widget>[

              Checkbox(value: false, onChanged: (bool value){
                print(value);


              }),
              Text(
                "suscribe to our newsletter",
                style: TextStyle(
                  fontSize: 15,
                ),

              ),


            ],


          ),
          SizedBox(height: 20,),
          MaterialButton(
            minWidth: 300.0,
            height: 60.0,
            onPressed: () {},
            color: Colors.red,
            child: Text('SEND', style: TextStyle(color: Colors.white)),
          ),
          SizedBox(height: 10,),
          Text(
            "(*REQUIRED FIELDS)",
            style: TextStyle(
              fontSize: 8,
            ),

          ),






          ]

      ),
      ),
     // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
