import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 280,
                    color: Colors.blueGrey,
                    width: double.infinity,
                  ),
                  Container(
                    height: 250,
                    color: Colors.blue,
                    width: double.infinity,
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            CircleAvatar(
                              backgroundImage: AssetImage("assetName"),
                              radius: 35,
                            ),
                            Align(
                                alignment: Alignment.topRight,
                                child: Icon(Icons.menu, color: Colors.white))
                            // Icon(Icons.menu,color:Colors.white)
                          ],
                        ),
                        Text(
                          "Walden Parker",
                          style: TextStyle(color: Colors.white, fontSize: 22),
                        ),
                        Text(
                          "Designer Product",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.location_on,),
                            // IconButton(
                            //   color: Colors.white,
                            //   icon: Icon(
                            //     Icons.location_on,
                            //     size: 20,
                            //   ),
                            //   onPressed: () {},
                            // ),
                            Text("San Francisco, CA",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12))
                          ],
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    left: 40,
                    right: 40,
                    bottom: 8,
                    child: Container(
                        height: 45,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text(
                                  "MASSAGE",
                                  style: TextStyle(
                                      color: Color(0xff004d84), fontSize: 12),
                                ),
                                SizedBox(width: 5),
                                Icon(
                                  Icons.message,
                                  color: Color(0xff004d84),
                                  size: 17,
                                )
                              ],
                            ),
                            SizedBox(width: 20),
                            Row(
                              children: <Widget>[
                                Text(
                                  "CONNECT",
                                  style: TextStyle(
                                      color: Color(0xff004d84), fontSize: 12),
                                ),
                                SizedBox(width: 5),
                                Container(
                                    height: 18,
                                    width: 20,
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                    decoration: BoxDecoration(
                                        color: Color(0xff004d84),
                                        border: Border.all(color: Colors.white),
                                        shape: BoxShape.circle)),
                              ],
                            )
                          ],
                        )),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Padding(
                padding: EdgeInsets.only(left: 45, right: 45),
                child: Text(
                    "Hi there 👏 I'm Walden, a Product designer living on the west coast."),
              )
            ],
          )
        ],
      )),
    );
  }
}
