import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sid_antevasi/animations/ShowUp.dart';

class ContactFragment extends StatefulWidget {
  @override
  _ContactFragmentState createState() => _ContactFragmentState();
}

class _ContactFragmentState extends State<ContactFragment> {
  @override
  Widget build(BuildContext context) {
    int delayAmount = 700;
    return SingleChildScrollView(
        child: Container(
      color: Colors.black,
      child: Column(
        children: <Widget>[
          Container(
              /*Upper half Part*/
              height: MediaQuery.of(context).size.height / 2,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(60.0))),
              child: ShowUp(
                delay: delayAmount,
                child: Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment(-0.7, -0.2),
                      child: Container(
                        height: 140.0,
                        width: 140.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: ExactAssetImage('images/avatar.jpg')),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment(-0.7, 0.4),
                      child: Text(
                        "Siddharth Kar",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25.0,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Align(
                      alignment: Alignment(1, 0.5),
                      child: Container(
                        height: 2,
                        width: MediaQuery.of(context).size.width - 40,
                        color: Colors.white,
                      ),
                    ),
                    Align(
                      alignment: Alignment(1, 0.54),
                      child: Container(
                        height: 2,
                        width: MediaQuery.of(context).size.width - 59,
                        color: Colors.white,
                      ),
                    ),
                    Align(
                      alignment: Alignment(0, 0.79),
                      child: Padding(
                        padding: EdgeInsets.only(right: 4.0, left: 57.0),
                        child: RichText(
                          text: TextSpan(
                              style: DefaultTextStyle.of(context).style,
                              children: <TextSpan>[
                                TextSpan(
                                    text:
                                        "Hours of operation is subject to availability of his presence.",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18))
                              ]),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
          Container(
            /*Below Part*/
            child: ListView(
              children: <Widget>[
                ListTile(
                  title: Text("HELLO"),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

/*
Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        child: Padding(
                          child: Icon(
                            Icons.phone,
                            color: Colors.purple,
                          ), padding: EdgeInsets.only(left: 50.0, top: 40.0),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[],
                  ),
                  Row(
                    children: <Widget>[],
                  ),
                ],
              ),*/
