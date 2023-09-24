import 'package:flutter/material.dart';
import 'package:vriddhi_base_code/Settings.dart';
import 'package:vriddhi_base_code/ContactUs.dart';
import 'package:vriddhi_base_code/Decoratives.dart';

import 'FoodAndBeverages.dart';
import 'Others.dart';
import 'dashboard.dart';
import 'my_drawer_header.dart';
import 'Jwellery.dart';
import 'Wishlist.dart';
import 'Privacy_Policy.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentPage = DrawerSections.dashboard;
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == DrawerSections.dashboard) {
      container = DashboardPage();
    } else if (currentPage == DrawerSections.FoodAndBeverages) {
      container = FoodAndBeverages();
    } else if (currentPage == DrawerSections.Decoratives) {
      container = decoratives();
    } else if (currentPage == DrawerSections.Jwellery) {
      container = Jwellery();
    } else if (currentPage == DrawerSections.others) {
      container = others();
    } else if (currentPage == DrawerSections.contacts) {
      container = contactUs();
    } else if (currentPage == DrawerSections.wishlist) {
      container = wishlist();
    } else if (currentPage == DrawerSections.settings) {
      container = settings();
    } else if (currentPage == DrawerSections.privacy_policy) {
      container = privacyPolicy();
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Vriddhi"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.perm_identity_outlined))
        ],
      ),
      body: container,
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyHeaderDrawer(),
                MyDrawerList(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monetization_on),
            label: 'Sell',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Wishlist',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (_selectedIndex == 0) {
        currentPage = DrawerSections.dashboard;
      } else if (_selectedIndex == 1) {
        currentPage = DrawerSections.settings;
      } else if (_selectedIndex == 2) {
        currentPage = DrawerSections.wishlist;
      }
    });
  }

  Widget MyDrawerList() {
    return Container(
      padding: EdgeInsets.only(
        top: 15,
      ),
      child: Column(
        // shows the list of menu drawer
        children: [
          menuItem(1, "Home", Icons.dashboard_outlined,
              currentPage == DrawerSections.dashboard ? true : false),
          menuItem(2, "FoodAndBeverages", Icons.people_alt_outlined,
              currentPage == DrawerSections.FoodAndBeverages ? true : false),
          menuItem(3, "Decoratives", Icons.event,
              currentPage == DrawerSections.Decoratives ? true : false),
          menuItem(4, "Jwellery", Icons.notes,
              currentPage == DrawerSections.Jwellery ? true : false),
          menuItem(5, "Others", Icons.notes,
              currentPage == DrawerSections.Jwellery ? true : false),
          Divider(),
          menuItem(6, "Contact Us", Icons.settings_outlined,
              currentPage == DrawerSections.settings ? true : false),
          menuItem(7, "Wishlist", Icons.heat_pump_rounded,
              currentPage == DrawerSections.wishlist ? true : false),
          Divider(),
          menuItem(8, "Settings", Icons.privacy_tip_outlined,
              currentPage == DrawerSections.settings ? true : false),
          menuItem(9, "Privacy Policy", Icons.feedback_outlined,
              currentPage == DrawerSections.privacy_policy ? true : false),
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.dashboard;
            } else if (id == 2) {
              currentPage = DrawerSections.FoodAndBeverages;
            } else if (id == 3) {
              currentPage = DrawerSections.Decoratives;
            } else if (id == 4) {
              currentPage = DrawerSections.Jwellery;
            } else if (id == 5) {
              currentPage = DrawerSections.Jwellery;
            } else if (id == 6) {
              currentPage = DrawerSections.contacts;
            } else if (id == 7) {
              currentPage = DrawerSections.wishlist;
            } else if (id == 8) {
              currentPage = DrawerSections.settings;
            } else if (id == 9) {
              currentPage = DrawerSections.privacy_policy;
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSections {
  dashboard,
  contacts,
  settings,
  privacy_policy,
  Decoratives,
  FoodAndBeverages,
  Jwellery,
  wishlist,
  others,
}
