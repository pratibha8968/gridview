import 'package:flutter/material.dart';

import 'home_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int itemcount = 500;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gridview Example"),
      ),
      body: Column(
          children: [
            Expanded(
                child:  Container()),
             MaterialButton(
              onPressed: () {
                setState(() {
                  itemcount = 5;
                });
              },
              color: Colors.yellow,
              child:  Text("5 elements"),
            ),
             MaterialButton(
              onPressed: () {
                setState(() {
                  itemcount = 30;
                });
              },
              color: Colors.green,
              child:  Text("30 elements"),
            ),

            new MaterialButton(
              onPressed: () {
                setState(() {
                  itemcount = 500;
                });
              },
              color: Colors.greenAccent,
              child: new Text("500 elements"),
            ),
            MaterialButton(
              onPressed: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  HomeScreen()),
                );
              },
              color: Colors.green,
              child:  Text("pressesd here"),
            ),
            Container(
              height: 240.0,
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              color: Colors.pink,
              child: new GridView.count(
                crossAxisCount: 3,
                scrollDirection: Axis.horizontal,
                controller:  ScrollController(
                  initialScrollOffset: 0.0,
                  keepScrollOffset: false,
                ),
                children:  List<Widget>.generate(
                  itemcount,
                  (index) {
                    String currentString = '$index';
                    return  Material(
                      color:  Color(0xFFEEEEEE),
                      child: Stack(
                        children: <Widget>[
                           Center(
                            child:  Text(
                              currentString,
                              style:  TextStyle(
                                fontSize: 24.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),

    );
  }
}
