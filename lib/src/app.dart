import 'package:flutter/material.dart';
import 'package:flutter_local_map/src/screens/favorite_screen.dart';
import 'package:flutter_local_map/src/screens/home_screen.dart';
import 'package:flutter_local_map/src/screens/map_screen.dart';
import 'package:flutter_local_map/src/screens/search_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Local Map',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          elevation: 0,
          backgroundColor: Theme.of(context).backgroundColor,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          elevation: 0,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: true,
          showUnselectedLabels: true,
        ),
      ),
      home: LocalMapApp(),
    );
  }
}

class LocalMapApp extends StatefulWidget {
  const LocalMapApp({Key? key}) : super(key: key);

  @override
  State<LocalMapApp> createState() => _LocalMapAppState();
}

class _LocalMapAppState extends State<LocalMapApp> {

  static const _screens = [
    HomeScreen(),
    SearchScreen(),
    MapScreen(),
    FavoriteScreen()
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'ホーム',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.manage_search),
            label: '検索',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pin_drop_sharp),
            label: '地図',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'お気に入り',
          ),
        ],
      ),
    );
  }
}
