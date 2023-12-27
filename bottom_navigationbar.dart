import 'package:exam_ui/home.dart';
import 'package:exam_ui/profile.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
     Container(color: Colors.orange),
     Container(color: Colors.tealAccent),
    Profile(),

  ];
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: _widgetOptions[_selectedIndex],
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: Colors.black.withOpacity(.1),
              )
            ],
          ),

          child: SafeArea(
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
              child: GNav(
                rippleColor: Colors.grey[300]!,
                hoverColor: Colors.grey[100]!,
                gap: 10,
                activeColor: Colors.white,
                iconSize: 24,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                duration: Duration(milliseconds: 400),
                tabBackgroundColor: Colors.black,
                color: Colors.black.withOpacity(0.6),

                tabs: const [

                  GButton(
                    icon: Icons.home,
                    text: 'Home',
                  ),
                  GButton(
                    icon: Icons.location_on,
                    text: 'Nearby',
                  ),
                  GButton(
                    icon: Icons.shopping_cart_outlined,
                    text: 'Cart',
                  ),
                  GButton(
                    icon: Icons.person,
                    text: 'Profile',
                  ),

                ],
                selectedIndex: _selectedIndex,
                onTabChange: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });

                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
