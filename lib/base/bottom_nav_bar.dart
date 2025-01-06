import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
// Import Fluent UI Icons

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  //list will iterate using index
  final appScreens =[
    Center(child: const Text("Home")),
    Center(child: const Text("Search")),
    Center(child: const Text("Tickets")),
    Center(child: const Text("Porfile")),
  ];


  //change on tap on BottomNavBar
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    _selectedIndex = index;
    print("Tapped Index is $_selectedIndex}");

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("My Tickets")),
      ),
      body: appScreens[0],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: const Color(0xFF526400),
        showSelectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),// Home button icon
            label: "Home",
          ),

          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),// Home button icon
            label: "Search",
          ),

          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),// Home button icon
            label: "Ticket",
          ),

          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),// Home button icon
            label: "Person",
          ),
        ],
      ),
    );
  }
}
