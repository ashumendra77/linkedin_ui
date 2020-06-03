import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Widget getdetail(){
    return Container(
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage("images/2.png"), fit: BoxFit.fill))),
            Padding(
              padding:  EdgeInsets.only(left:8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Aarogya Setu",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Lead Designer",
                    style: TextStyle(color: Colors.grey,fontSize: 12),
                  ),
                ],
              ),
            ),
            SizedBox(width: 50),
            Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage("images/download.png"),
                        fit: BoxFit.fill))),
            Padding(
              padding:  EdgeInsets.only(left:8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("DROPBOX",style: TextStyle(color: Colors.white),),
                  Text("Designer",style: TextStyle(fontSize:12,color:Colors.grey),),
                ],
              ),
            ),
            SizedBox(width: 50),
            Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage("images/1.png"),
                        fit: BoxFit.fill))),
            Padding(
              padding:  EdgeInsets.only(left:8.0),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("IDEO",style: TextStyle(color: Colors.white),),
                  Text("Designer",style: TextStyle(color: Colors.grey),),
                ],
              ),
            ),
            SizedBox(width:50)
          ],
        ),
        Padding(
          padding: EdgeInsets.only(left: 10.0, top: 5),
          child: Row(
            children: <Widget>[
              Text("NOW",style: TextStyle(color:Colors.white),),
              Container(
                height: 1,
                width: 150,
                margin: EdgeInsets.only(left: 15, right: 10),
                color: Color(0xff565a83),
              ),
              Text("2016",style: TextStyle(color:Colors.white),),
              Container(
                height: 1,
                width: 128,
                margin: EdgeInsets.only(left: 15, right: 10),
                color: Color(0xff565a83),
              ),
              Text("Start",style: TextStyle(color:Colors.white),),
              // Container(
              //   height: 1,
              //   width: 128,
              //   margin: EdgeInsets.only(left: 15, right: 10),
              //   color: Color(0xff565a83),
              // ),
              // Text("Start",style: TextStyle(color:Colors.white),),
            ],
          ),
        ),
      ],
    )
    );

  }
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
              Stack(
                children: <Widget>[
                  Container(
                    height: 280,
                    color: Colors.transparent,
                    width: double.infinity,
                  ),
                  Container(
                    height: 250,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        image: DecorationImage(
                            image: AssetImage("images/2.jpeg"),
                            fit: BoxFit.fill),
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
                              backgroundImage: AssetImage("images/6.jpeg"),
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
                          color: Color(0xff7286b2),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text(
                                  "MASSAGE",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                                SizedBox(width: 5),
                                Icon(
                                  Icons.message,
                                  color: Colors.white,
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
                                      color: Colors.white, fontSize: 12),
                                ),
                                SizedBox(width: 5),
                                Container(
                                    height: 15,
                                    width: 15,
                                    child: Icon(
                                      Icons.add,
                                      color: Color(0xff7286b6),
                                      size: 15,
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        // border: Border.all(color: Colors.white),
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
                  "Hi there 👏 I'm Walden, a Product designer living on the west coast.",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height:15),
              Container(
                height: 85,
                // color: Colors.white,
                child:ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[Row(
                  children: <Widget>[
                    Padding(
                      padding:  EdgeInsets.only(left:10.0,right: 5),
                      child: getdetail(),
                    ),
                  ],
                )],)
              ),

              // Row(
              //   children: <Widget>[getdetail()],
              // ),

              // Row(
              //   children: <Widget>[
              //     Row(
              //       children: <Widget>[
              //         Container(
              //             height: 60,
              //             width: 60,
              //             decoration: BoxDecoration(
              //                 borderRadius: BorderRadius.circular(10),
              //                 image: DecorationImage(
              //                     image: AssetImage("images/2.png"),
              //                     fit: BoxFit.fill))),
              //         Column(
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: <Widget>[
              //             Text(
              //               "Aarogya Setu",
              //               style: TextStyle(color: Colors.white),
              //             ),
              //             Text(
              //               "Designer",
              //               style: TextStyle(color: Colors.grey),
              //             ),
              //           ],
              //         ),
              //         SizedBox(width: 35),
              //         Container(
              //             height: 60,
              //             width: 60,
              //             decoration: BoxDecoration(
              //                 borderRadius: BorderRadius.circular(10),
              //                 image: DecorationImage(
              //                     image: AssetImage("images/download.png"),
              //                     fit: BoxFit.fill))),
              //         Column(
              //           children: <Widget>[
              //             Text("IDEO"),
              //             Text("Designer"),
              //           ],
              //         ),
              //         SizedBox(width: 50),
              //         //            Container(
              //         // height: 60,
              //         // width: 60,
              //         // decoration: BoxDecoration(
              //         //   borderRadius: BorderRadius.circular(10),
              //         //     image: DecorationImage(
              //         //         image:
              //         //             AssetImage("images/download.png"),fit: BoxFit.fill))),
              //       ],
              //     ),
              //   ],
              // ),
              // Padding(
              //   padding: EdgeInsets.only(left: 10.0, top: 5),
              //   child: Row(
              //     children: <Widget>[
              //       Text("NOW"),
              //       Container(
              //         height: 1,
              //         width: 125,
              //         margin: EdgeInsets.only(left: 15, right: 10),
              //         color: Colors.red,
              //       ),
              //       Text("2016"),
              //     ],
              //   ),
              // ),
              Text("Activity",style: TextStyle(color:Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
              SizedBox(height:10),
              Row(
                children: <Widget>[
                  Container(
                      height: 160,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          image: DecorationImage(
                              image: AssetImage("images/5.jpeg"),
                              fit: BoxFit.fill)))
                ],
              )
            ],
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
                            backgroundImage: AssetImage("assetName"),
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
