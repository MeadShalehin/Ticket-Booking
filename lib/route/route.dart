import 'package:flutter/material.dart';
import 'package:ticket_booking_app/screens/home/all_tickets.dart';
import 'package:ticket_booking_app/screens/home/home_screen.dart';
import 'package:ticket_booking_app/route/route_path.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> getRoutes() {
    return {
      RoutePath.home: (context) => const HomeScreen(),
      RoutePath.allTickets: (context) => const AllTickets(),
      // Add more routes here as needed
    };
  }
}
