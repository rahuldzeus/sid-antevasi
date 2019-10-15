import 'package:flutter/material.dart';
import 'package:sid_antevasi/fragments/AboutFragment.dart';
import 'package:sid_antevasi/fragments/ContactFragment.dart';
import 'package:sid_antevasi/fragments/HomeFragment.dart';
import 'package:sid_antevasi/fragments/TweetFragment.dart';
import 'package:sid_antevasi/presentation/custom_icons.dart';
import 'package:sid_antevasi/presentation/my_flutter_app_icons.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Properties & Variables needed

  int currentTab = 0; // to keep track of active tab index
  final List<Widget> screens = [
    HomeFragment(),
    AboutFragment(),
    TweetFragment(),
    ContactFragment(),
  ]; // to store nested tabs
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = HomeFragment(); // Our first view in viewport

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(CustomIcon.twitter_icon),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: ClipPath(
//        clipper: BottomWaveClipper(),
        child: BottomAppBar(
          elevation: 10.0,
          shape: CircularNotchedRectangle(),
          child: Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen =
                              HomeFragment(); // if user taps on this dashboard tab will be active
                          currentTab = 0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.home,
                            color: currentTab == 0 ? Colors.purple : Colors.grey,
                          ),
                          Text(
                            'Home',
                            style: TextStyle(
                              color:
                              currentTab == 0 ? Colors.purple : Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen =
                              AboutFragment(); // if user taps on this dashboard tab will be active
                          currentTab = 1;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.info,
                            color: currentTab == 1 ? Colors.purple : Colors.grey,
                          ),
                          Text(
                            'About',
                            style: TextStyle(
                              color:
                              currentTab == 1 ? Colors.purple : Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),

                // Right Tab bar icons

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen =
                              TweetFragment(); // if user taps on this dashboard tab will be active
                          currentTab = 2;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.blur_on,
                            color: currentTab == 2 ? Colors.purple : Colors.grey,
                          ),
                          Text(
                            'Tweets',
                            style: TextStyle(
                              color:
                              currentTab == 2 ? Colors.purple : Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen =
                              ContactFragment(); // if user taps on this dashboard tab will be active
                          currentTab = 3;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.contacts,
                            color: currentTab == 3 ? Colors.purple : Colors.grey,
                          ),
                          Text(
                            'Contact',
                            style: TextStyle(
                              color:
                              currentTab == 3 ? Colors.purple : Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),

      ),
    );
  }
}


class BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    // Draw a straight line from current point to the bottom left corner.
    path.lineTo(0.0, size.height);

    // Draw a straight line from current point to the top right corner.
    path.lineTo(size.width, 0.0);

    // Draws a straight line from current point to the first point of the path.
    // In this case (0, 0), since that's where the paths start by default.
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
