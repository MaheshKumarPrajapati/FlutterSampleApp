import 'package:flutter/material.dart';
import './NewsTabScreen.dart';

void main() => runApp(MainScreen());

class MainScreen extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
        _createHeader(),
        _createDrawerItem(icon: Icons.library_books_outlined,text: 'News', onTap: () =>
            Navigator.pushReplacementNamed(context, Routes.newstab),),
        _createDrawerItem(icon: Icons.event, text: 'Events',),
       _createDrawerItem(icon: Icons.note, text: 'Notes',),
        Divider(),
       _createDrawerItem(icon: Icons.collections_bookmark, text:           'Steps'),
       _createDrawerItem(icon: Icons.face, text: 'Authors'),
       _createDrawerItem(icon: Icons.account_box, text: 'Flutter Documentation'),
       _createDrawerItem(icon: Icons.stars, text: 'Useful Links'),
       Divider(),
        _createDrawerItem(icon: Icons.bug_report, text: 'Report an issue'),
    ListTile(
    title: Text('0.0.1'),
    onTap: () {},
    ),
    ],
    ));

  }

  Widget _createHeader() {
    return DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image:  AssetImage('assets/images/left_menu.jpeg')
            )),
        child: Stack(children: <Widget>[
          Positioned(
              bottom: 12.0,
              left: 16.0,
              child: Text("Mahesh Prajapati",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500))),
        ]));
  }

  Widget _createDrawerItem(
      {IconData icon, String text, GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}

class Routes {
  static const String newstab = NewsTabScreen.routeName;
/*  static const String events = EventsPage.routeName;
  static const String notes = NotesPage.routeName;*/
}
