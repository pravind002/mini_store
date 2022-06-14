import 'package:flutter/material.dart';
import 'package:mini_store/login/login.dart';
import 'package:mini_store/screens/components/body.dart';
import 'package:mini_store/screens/components/search_bar.dart';
import 'package:mini_store/screens/tabs/categories.dart';
import 'package:mini_store/screens/tabs/home.dart';
import 'package:mini_store/screens/tabs/notification.dart';
import 'package:mini_store/screens/tabs/setting.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _BottomNavbar createState() => _BottomNavbar();
}

class _BottomNavbar extends State<HomeScreen> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Hometab(),
    //Category(),
    ProductsView(),
    Notifiction(),
    Seting(),
    ProductsView(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueAccent,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 10,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category_outlined),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: const Icon(Icons.account_circle),
          onPressed: () {},
        ),
        title: const Text('Mini Store'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const Notifiction(),
              ));
            },
          ),
          IconButton(
            icon: const Icon(Icons.favorite_outline),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const LoginApp(),
                ),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart_outlined),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const ProductsView(),
              ));
            },
          ),
        ],
        // elevation: 10,
      ),
    );
  }
}
