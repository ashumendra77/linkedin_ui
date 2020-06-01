import 'package:flutter/material.dart';

import 'homepage.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff24284f),
      body: SafeArea(
          child: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "in",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));},
                  )
                ],
              ),
              Text(
                "Network",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                  height: 340,
                  // color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              CircleAvatar(
                                  backgroundImage: AssetImage("assetName")),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Sara Michaelson",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    "Art Director at MX Studio",
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 18.0),
                            child: Text(
                              "3d",
                              style: TextStyle(color: Colors.grey),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 200,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.yellowAccent,
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage("assetName"),
                                fit: BoxFit.fill)),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Check out my new work ✌️",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: <Widget>[
                          Container(
                              height: 35,
                              width: 70,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.thumb_up,
                                    color: Colors.blue,
                                    size: 18,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    "${36}",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ],
                              )),
                          SizedBox(width: 10),
                          Container(
                              height: 35,
                              width: 70,
                              decoration: BoxDecoration(
                                  color: Color(0xff24284f),
                                  border:
                                      Border.all(color: Colors.white, width: 1),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.favorite,
                                      color: Colors.red, size: 20),
                                  SizedBox(width: 2),
                                  Text(
                                    "${10}",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              )),
                          SizedBox(width: 10),
                          Container(
                              height: 32,
                              width: 30,
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 20,
                              ),
                              decoration: BoxDecoration(
                                  color: Color(0xff24284f),
                                  border: Border.all(color: Colors.white),
                                  shape: BoxShape.circle)),
                          SizedBox(width: 60),
                          Container(
                              height: 35,
                              width: 90,
                              decoration: BoxDecoration(
                                  color: Color(0xff4c4f76),
                                  border:
                                      Border.all(color: Colors.white, width: 1),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Visit",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  SizedBox(width: 5),
                                  Icon(Icons.arrow_forward,
                                      color: Colors.white, size: 20),
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
