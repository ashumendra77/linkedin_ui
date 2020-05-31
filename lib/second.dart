import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("in"),
                  IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: () {},
                  )
                ],
              ),
              Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          CircleAvatar(
                              backgroundImage: AssetImage("assetName")),
                          Column(
                            children: <Widget>[
                              Text("Sara Michaelson"),
                              Text("Art Director at MX Studio")
                            ],
                          ),
                          Text("3d")
                        ],
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 200,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage("assetName"),
                                fit: BoxFit.fill)),
                      ),
                      SizedBox(height: 10),
                      Text("Check out my new work"),
                      SizedBox(height: 10),
                      Row(
                        children: <Widget>[
                          Container(
                              height: 20,
                              width: 60,
                              decoration: BoxDecoration(
                                  // color:Colors
                                  borderRadius: BorderRadius.circular(15)),
                              child: Row(
                                children: <Widget>[
                                  Icon(Icons.thumb_up, color: Colors.blue),
                                  Text("${36}"),
                                ],
                              )),
                          Container(
                              height: 20,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  border:
                                      Border.all(color: Colors.white, width: 2),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Row(
                                children: <Widget>[
                                  Icon(Icons.favorite, color: Colors.red),
                                  Text("${10}"),
                                ],
                              )),
                        ],
                      )
                    ],
                  ))
            ],
          )
        ],
      )),
    );
  }
}
