import 'package:flutter/material.dart';
import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  final VoidCallback? onToggleTheme;
  const SplashScreen({this.onToggleTheme});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Telemedicine Kiosk', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: widget.onToggleTheme,
              child: Text('Switch Theme'),
            )
          ],
        ),
      ),
    );
  }
}
