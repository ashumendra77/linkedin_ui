import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:linkedin_ui/model/detail.dart';

import 'homepage.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.dispose();
  }

  Widget getbody(Linkedin link) {
    return Column(
      children: <Widget>[
        Container(
            height: 310,
            //  color: Colors.red,
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
                            backgroundImage: AssetImage("images/images.png")),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              link.name,
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              link.occ,
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 18.0),
                      child: Text(
                        "${link.time}d",
                        style: TextStyle(color: Colors.grey),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 15),
                Container(
                  height: 180,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.yellowAccent,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage("images/images.png"),
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
                        height: 32,
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
                              "${link.like}",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        )),
                    SizedBox(width: 10),
                    Container(
                        height: 32,
                        width: 70,
                        decoration: BoxDecoration(
                            color: Color(0xff24284f),
                            border: Border.all(color: Colors.white, width: 1),
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.favorite, color: Colors.red, size: 20),
                            SizedBox(width: 2),
                            Text(
                              "${link.favorate}",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        )),
                    SizedBox(width: 10),
                    Container(
                        height: 30,
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
                    SizedBox(width: 40),
                    Container(
                        height: 32,
                        width: 90,
                        decoration: BoxDecoration(
                            color: Color(0xff4c4f76),
                            // border: Border.all(color: Colors.white, width: 1),
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
            )),
        SizedBox(height: 15)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff24284f),
      body: SafeArea(
          child: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 18.0, right: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "in",
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                    )
                  ],
                ),
                Text(
                  "Network",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height:15),

                Column(
                    children:
                        linked.toList().asMap().entries.map((MapEntry map) {
                  return getbody(map.value);
                }).toList())
                // Container(
                //     height: 340,
                //     // color: Colors.white,
                //     width: MediaQuery.of(context).size.width,
                //     child: Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children: <Widget>[
                //         Row(
                //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //           children: <Widget>[
                //             Row(
                //               children: <Widget>[
                //                 CircleAvatar(
                //                     backgroundImage: AssetImage("images/images.png")),
                //                 SizedBox(width: 10),
                //                 Column(
                //                   crossAxisAlignment: CrossAxisAlignment.start,
                //                   children: <Widget>[
                //                     Text(
                //                       "Sara Michaelson",
                //                       style: TextStyle(color: Colors.white),
                //                     ),
                //                     Text(
                //                       "Art Director at MX Studio",
                //                       style: TextStyle(color: Colors.grey),
                //                     )
                //                   ],
                //                 ),
                //               ],
                //             ),
                //             Padding(
                //               padding: EdgeInsets.only(top: 18.0),
                //               child: Text(
                //                 "3d",
                //                 style: TextStyle(color: Colors.grey),
                //               ),
                //             )
                //           ],
                //         ),
                //         SizedBox(height: 20),
                //         Container(
                //           height: 200,
                //           width: double.infinity,
                //           decoration: BoxDecoration(
                //               color: Colors.yellowAccent,
                //               borderRadius: BorderRadius.circular(20),
                //               image: DecorationImage(
                //                   image: AssetImage("images/images.png"),
                //                   fit: BoxFit.fill)),
                //         ),
                //         SizedBox(height: 10),
                //         Text(
                //           "Check out my new work ✌️",
                //           style: TextStyle(color: Colors.white),
                //         ),
                //         SizedBox(height: 10),
                //         Row(
                //           children: <Widget>[
                //             Container(
                //                 height: 35,
                //                 width: 70,
                //                 decoration: BoxDecoration(
                //                     color: Colors.white,
                //                     borderRadius: BorderRadius.circular(20)),
                //                 child: Row(
                //                   mainAxisAlignment: MainAxisAlignment.center,
                //                   children: <Widget>[
                //                     Icon(
                //                       Icons.thumb_up,
                //                       color: Colors.blue,
                //                       size: 18,
                //                     ),
                //                     SizedBox(width: 5),
                //                     Text(
                //                       "${36}",
                //                       style: TextStyle(fontSize: 15),
                //                     ),
                //                   ],
                //                 )),
                //             SizedBox(width: 10),
                //             Container(
                //                 height: 35,
                //                 width: 70,
                //                 decoration: BoxDecoration(
                //                     color: Color(0xff24284f),
                //                     border:
                //                         Border.all(color: Colors.white, width: 1),
                //                     borderRadius: BorderRadius.circular(20)),
                //                 child: Row(
                //                   mainAxisAlignment: MainAxisAlignment.center,
                //                   children: <Widget>[
                //                     Icon(Icons.favorite,
                //                         color: Colors.red, size: 20),
                //                     SizedBox(width: 2),
                //                     Text(
                //                       "${10}",
                //                       style: TextStyle(color: Colors.white),
                //                     ),
                //                   ],
                //                 )),
                //             SizedBox(width: 10),
                //             Container(
                //                 height: 32,
                //                 width: 30,
                //                 child: Icon(
                //                   Icons.add,
                //                   color: Colors.white,
                //                   size: 20,
                //                 ),
                //                 decoration: BoxDecoration(
                //                     color: Color(0xff24284f),
                //                     border: Border.all(color: Colors.white),
                //                     shape: BoxShape.circle)),
                //             SizedBox(width: 60),
                //             Container(
                //                 height: 35,
                //                 width: 90,
                //                 decoration: BoxDecoration(
                //                     color: Color(0xff4c4f76),
                //                     border:
                //                         Border.all(color: Colors.white, width: 1),
                //                     borderRadius: BorderRadius.circular(20)),
                //                 child: Row(
                //                   mainAxisAlignment: MainAxisAlignment.center,
                //                   children: <Widget>[
                //                     Text(
                //                       "Visit",
                //                       style: TextStyle(color: Colors.white),
                //                     ),
                //                     SizedBox(width: 5),
                //                     Icon(Icons.arrow_forward,
                //                         color: Colors.white, size: 20),
                //                   ],
                //                 )),
                //           ],
                //         )
                //       ],
                //     ))
              ],
            ),
          )
        ],
      )),
      bottomNavigationBar: Container(
          height: 80,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Color(0xff555e7b),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.home,
                  size: 30,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.work,
                  size: 30,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              FloatingActionButton(
                elevation: 10,
                backgroundColor: Colors.white,
                onPressed: () {},
                child: Icon(Icons.add, size: 35, color: Colors.black),
              ),
              IconButton(
                icon: Icon(
                  Icons.search,
                  size: 30,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              Stack(
                children: <Widget>[
                  Container(
                      width: 45,
                      // color: Colors.white,
                      child: Stack(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: AssetImage("images/2.jpeg"),
                          ),
                          Positioned(
                              right: 0,
                              child: CircleAvatar(
                                  radius: 10,
                                  backgroundColor: Colors.red,
                                  child: Center(child: Text("3"))))
                        ],
                      ))
                ],
              )
            ],
          )),
    );
  }
}
