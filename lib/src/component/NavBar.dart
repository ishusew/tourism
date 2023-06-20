import 'package:flutter/material.dart';
import 'package:tourism/src/dashboard/HomeScreen.dart';
import 'package:tourism/src/dashboard/profile/profileScreen/profileScreen.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}
class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0; // Initially set the first screen as selected

  void _onNavItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
              accountName: Text('ishara'),
              accountEmail: Text('ishara@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset('assets/images/profile.png',
                width: 90,
                height: 90,
                fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              // image: DecorationImage(
                // image: Image.asset('assets/images/bg.png'),
                // fit: BoxFit.cover
              // )
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home',
              style: TextStyle(
                color: _selectedIndex == 0 ? Colors.blue : Colors.black,
              ),),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.translate),
            title: Text('Translator'),
            onTap: ()=>null,
          ),
          ListTile(
            leading: Icon(Icons.currency_exchange),
            title: Text('Currency convertor'),
            onTap: ()=>null,
          ),
          ListTile(
            leading: Icon(Icons.sunny_snowing),
            title: Text('Weather'),
            onTap: ()=>null,
          ),
          ListTile(
            leading: Icon(Icons.next_plan),
            title: Text('Trip planner'),
            onTap: ()=>null,
          ),
          ListTile(
            leading: Icon(Icons.price_change_outlined),
            title: Text('Budget Price'),
            onTap: ()=>null,
          ),
          ListTile(
            leading: Icon(Icons.chat),
            title: Text('AI chat'),
            onTap: ()=>null,
          ),
          ListTile(
            leading: Icon(Icons.safety_check),
            title: Text('Safety Guidence'),
            onTap: ()=>null,
          ),









        ],
      ),
    );
  }
}
