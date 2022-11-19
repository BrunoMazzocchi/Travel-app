import 'package:favorite_places/place/ui/views/view_popular_place.dart';
import 'package:favorite_places/place/ui/views/view_all_places.dart';
import 'package:favorite_places/user/ui/views/view_profile.dart';
import 'package:favorite_places/user/ui/views/view_signin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _currentIndex = 0;

  // Asigna el estado  de la barra de navegación
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    final List<Widget> widgetsChildren = [
      const AllPlaces(),
      const Profile(),
    ];



    return Scaffold(
      body: widgetsChildren[_currentIndex],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple,
        ),
        child: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
          onTap: onTabTapped,
          currentIndex: _currentIndex,
        ),
      ),
    );
  }
}
