import 'package:flutter/material.dart';
import 'package:couldai_user_app/screens/landing_screen.dart';
import 'package:couldai_user_app/features/user/screens/user_home_screen.dart';
import 'package:couldai_user_app/features/vendor/screens/vendor_dashboard_screen.dart';
import 'package:couldai_user_app/features/admin/screens/admin_dashboard_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Multi-Vendor E-commerce',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: 0,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LandingScreen(),
        '/user/home': (context) => const UserHomeScreen(),
        '/vendor/dashboard': (context) => const VendorDashboardScreen(),
        '/admin/dashboard': (context) => const AdminDashboardScreen(),
      },
    );
  }
}
