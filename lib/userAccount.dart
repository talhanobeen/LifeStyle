import 'package:flutter/material.dart';
import 'package:lifestyle/mainHome.dart';
import 'package:lifestyle/settings.dart';

class userAccount extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return userAccountState();
  }
}

class userAccountState extends State<userAccount> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Scaffold(
            appBar: AppBar(
              title: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text("User Account"),
              ),
            ),
            bottomNavigationBar: BottomAppBar(
                shape: CircularNotchedRectangle(),
                child: Container(
                  height: 75,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      IconButton(
                        iconSize: 50.0,
                        icon: Icon(Icons.settings),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => settings()));
                        },
                      ),
                      IconButton(
                        iconSize: 50.0,
                        icon: Icon(Icons.home),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => mainHome()));
                        },
                      ),
                      IconButton(
                        iconSize: 50.0,
                        icon: Icon(Icons.supervised_user_circle_outlined),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => userAccount()));
                        },
                      )
                    ],
                  ),
                ))));
  }
}
