import 'package:flutter/material.dart';
import './NewsScreen.dart';
import './MainScreen.dart';

class NewsTabScreen extends StatelessWidget {
  static const String routeName = '/newstabs';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 10,
        child: Scaffold(
          appBar: AppBar(
            title: Text("News"),
            bottom: TabBar(isScrollable: true, tabs: [
              Tab( text: "दुनिया"),
              Tab(text: "देश"),
              Tab(text: "राजनीति"),
              Tab(text: "खेल"),
              Tab(text: "स्वास्थ्य"),
              Tab(text: "मनोरंजन"),
              Tab(text: "व्यापार"),
              Tab(text: "ऑटोमोबाइल"),
              Tab(text: "बाज़ार"),
              Tab(text: "टेक्नोलॉजी")
            ],
            ),
          ),
          drawer: MainScreen(),
          body: TabBarView(
            children: [
              NewsScreen(links:'https://www.bhaskarhindi.com/rss/international'),
              NewsScreen(links:'https://www.bhaskarhindi.com/rss/national'),
              NewsScreen(links:'https://www.bhaskarhindi.com/rss/politics'),
              NewsScreen(links:'https://www.bhaskarhindi.com/rss/sports'),
              NewsScreen(links:'https://www.bhaskarhindi.com/rss/health'),
              NewsScreen(links:'https://www.bhaskarhindi.com/rss/entertainment'),
              NewsScreen(links:'https://www.bhaskarhindi.com/rss/business'),
              NewsScreen(links:'https://www.bhaskarhindi.com/rss/automobile'),
              NewsScreen(links:'https://www.bhaskarhindi.com/rss/market'),
              NewsScreen(links:'https://www.bhaskarhindi.com/rss/technology'),
              //AddNewExpence(),
            ],
          ),
        ),
      ),
    );
  }
}