import 'package:flutter/material.dart';
import 'package:lifestyle/userAccount.dart';
import 'package:lifestyle/mainHome.dart';
import 'package:lifestyle/settings.dart';

class motivation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return motivationState();
  }
}

class motivationState extends State<motivation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text("OneStop "),
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              new UserAccountsDrawerHeader(
                accountName: new Text('Murtaza'),
                accountEmail: new Text('murtaza.sharbat786@gmail.com'),
                currentAccountPicture: new CircleAvatar(
                  backgroundImage: new NetworkImage('url'),
                ),
              ),
              ListTile(
                title: Text('About Page'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('User Settings'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: Center(child: Text('Motivation Page')),
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => settings()));
                    },
                  ),
                  IconButton(
                    iconSize: 50.0,
                    icon: Icon(Icons.home),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => mainHome()));
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
            )));
  }
}
