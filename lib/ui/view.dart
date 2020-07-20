import 'package:flutter/material.dart';
import 'package:foodreviewapp/ui/fav_page.dart';
import 'package:foodreviewapp/ui/home_page.dart';
import 'package:foodreviewapp/ui/noti_page.dart';
import 'package:foodreviewapp/ui/post_page.dart';
import 'package:foodreviewapp/ui/profile_page.dart';

class RootPage extends StatefulWidget {
  @override
  _HomeNavState createState() => _HomeNavState();
}

class _HomeNavState extends State<RootPage> {


  int _selectedIndex = 0;
  final List<Widget> _children = [
    HomePage(),
    PostPage(),
    NotiPage(),
    FavPage(),
    ProfilePage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food Review', style: TextStyle(color: Colors.black,fontSize: 24)),
      ),
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon( Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_to_photos),
            title: Text('Post'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            title: Text('Notification'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text('Favorite'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('Profile'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.pinkAccent,
        onTap: _onItemTapped,
      ),
    );
  }
}
