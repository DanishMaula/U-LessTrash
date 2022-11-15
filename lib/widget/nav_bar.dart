import 'package:flutter/material.dart';
import 'package:u_less_trash/pages/ADD%20TRASH/add_trash.dart';
import 'package:u_less_trash/pages/CHAT/chat_page.dart';
import 'package:u_less_trash/pages/CHAT/chat_page_list.dart';
import 'package:u_less_trash/pages/HOME/home_page.dart';
import 'package:u_less_trash/pages/MY_STOCK/my_stock.dart';
import 'package:u_less_trash/pages/PROFILE/profile_page.dart';

class NavBar extends StatefulWidget {
  const NavBar({
    Key? key,
  }) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    MyStock(),
    AddTrash(),
    ChatPageList(),
    ProfilePage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_selectedIndex == 2) {
      return Scaffold(
        body: _widgetOptions.elementAt(_selectedIndex),
      );
    }

    return Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: Theme(
          data:
              Theme.of(context).copyWith(canvasColor: const Color(0xff2D8D7B)),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Image.asset(
                    _selectedIndex == 0
                        ? 'assets/images/home_selected.png'
                        : 'assets/images/home_unselected.png',
                    width: 25,
                    height: 25,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    _selectedIndex == 1
                        ? 'assets/images/box_selected.png'
                        : 'assets/images/box_unselected.png',
                    width: 25,
                    height: 25,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/images/ic_add_trash.png',
                    width: 35,
                    height: 35,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    _selectedIndex == 3
                        ? 'assets/images/chat_selected.png'
                        : 'assets/images/chat_unselected.png',
                    width: 25,
                    height: 25,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    _selectedIndex == 4
                        ? 'assets/images/profile_selected.png'
                        : 'assets/images/profile_unselected.png',
                    width: 25,
                    height: 25,
                  ),
                  label: ''),
            ],
            onTap: _onItemTapped,
            selectedItemColor: const Color(0xffffffff),
            unselectedItemColor: Colors.white,
            selectedFontSize: 0,
          ),
        ));
  }
}
