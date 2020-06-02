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
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(25),
                            bottomRight: Radius.circular(25))),
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
                            Icon(
                              Icons.location_on,
                              color: Colors.white,
                              size: 16,
                            ),
                            Text("San Francisco, CA",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 13))
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
              ),
              Row(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage("images/2.png"),
                                  fit: BoxFit.fill))),
                      Column(
                        children: <Widget>[
                          Text("Aarogya Setu"),
                          Text("Designer"),
                        ],
                      ),
                      SizedBox(width: 35),
                      Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage("images/download.png"),
                                  fit: BoxFit.fill))),
                      Column(
                        children: <Widget>[
                          Text("IDEO"),
                          Text("Designer"),
                        ],
                      ),
                      SizedBox(width: 50),
                      //            Container(
                      // height: 60,
                      // width: 60,
                      // decoration: BoxDecoration(
                      //   borderRadius: BorderRadius.circular(10),
                      //     image: DecorationImage(
                      //         image:
                      //             AssetImage("images/download.png"),fit: BoxFit.fill))),
                    ],
                  ),
                ],
              ),
              Padding(
                padding:  EdgeInsets.only(left:10.0,top:5),
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("2020"),
                    Container(height:1,width:120,
                    margin: EdgeInsets.only(left:10,right:10),
                    color: Colors.red,
                    ),
                    Text("2016")
                  ],
                ),
              ),
              Text("Activity")
            ],
          )
        ],
      )),
    );
  }
}
