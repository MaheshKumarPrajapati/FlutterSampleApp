import 'package:flutter/material.dart';
import './AllExpencesScreen.dart';
import './AddNewExpence.dart';

void main() => runApp(MainScreen());

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Flutter Tabs Demo'),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.contacts), text: "Tab 1"),
                Tab(icon: Icon(Icons.camera_alt), text: "Tab 2")
              ],
            ),
          ),
          body: TabBarView(
            children: [
              AllExpencesScreen(),
              AddNewExpence(),
            ],
          ),
        ),
      ),
    );
  }
}
