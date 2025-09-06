import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'screens/splash_screen.dart';
import 'screens/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(TelemedicineKioskApp());
}

class TelemedicineKioskApp extends StatefulWidget {
  @override
  State<TelemedicineKioskApp> createState() => _TelemedicineKioskAppState();
}

class _TelemedicineKioskAppState extends State<TelemedicineKioskApp> {
  ThemeMode _themeMode = ThemeMode.light;

  void _toggleTheme() {
    setState(() {
      _themeMode = _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Telemedicine Kiosk',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: _themeMode,
      home: SplashScreen(onToggleTheme: _toggleTheme),
      debugShowCheckedModeBanner: false,
    );
  }
}
