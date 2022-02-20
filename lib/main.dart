import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _idx = 0;
  int count1 = 0;
  int count2 = 0;
  String vicTeam = '';

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Container(height: 50),
          Text(
            '탁구 대회',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Container(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('패스트 대학'),
              Text('캠퍼스 대학'),
            ],
          ),
          Container(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('$count1점',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              Text('$count2점',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            ],
          ),
          Container(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () {
                        setState(() {
                          count1 = count1 + 1;
                          if (count1 > 10) {
                            vicTeam = '패스트 대학 승리!';
                          }
                        });
                      }),
                  IconButton(
                      icon: Icon(Icons.remove),
                      onPressed: () {
                        setState(() {
                          count1 = count1 - 1;
                        });
                      })
                ],
              ),
              Row(
                children: [
                  IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () {
                        setState(() {
                          count2 = count2 + 1;
                          if (count1 > 10) {
                            vicTeam = '패스트 대학 승리!';
                          }
                        });
                      }),
                  IconButton(
                      icon: Icon(Icons.remove),
                      onPressed: () {
                        setState(() {
                          count2 = count2 - 1;
                        });
                      })
                ],
              )
            ],
          ),
          Container(height: 20),
          Text(vicTeam, style: TextStyle(fontSize: 50, color: Colors.green)),
        ],
      ),
    );
  }
}
