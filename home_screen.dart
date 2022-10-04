import 'package:flutter/material.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("gridview"),
      ),
      body:
      Column(
        children: [
          GridView.builder(
            itemCount:20,

            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5,
                    mainAxisSpacing: 7,
                    crossAxisSpacing: 7),
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.all(5.0),

                color: index % 2 == 0 ? Colors.greenAccent : Colors.purpleAccent,


                child: GridTile(
                  child: Text(" $index"),
                ),

              );
            },
          ),

        ],
      ),
    );
  }
}
