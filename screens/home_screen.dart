import 'package:flutter/material.dart';
import 'book_appointment_screen.dart';
import 'doctor_status_screen.dart';
import '../services/kiosk_channel.dart';
import 'login_screen.dart';
import 'dart:async';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool kioskStarted = false;
  Timer? _inactivityTimer;

  @override
  void initState() {
    super.initState();
    _startKiosk();
    _resetTimer();
  }

  Future<void> _startKiosk() async {
    await KioskChannel.startKiosk();
    setState(() => kioskStarted = true);
  }

  void _resetTimer() {
    _inactivityTimer?.cancel();
    _inactivityTimer = Timer(Duration(minutes: 2), _lockApp);
  }

  void _lockApp() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => LoginScreen()));
  }

  @override
  void dispose() {
    _inactivityTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _resetTimer,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Telemedicine Kiosk'),
          automaticallyImplyLeading: false,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => BookAppointmentScreen()));
              }, child: Text('Book Appointment')),
              SizedBox(height: 20),
              ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => DoctorStatusScreen()));
              }, child: Text('Doctor Status')),
              SizedBox(height: 40),
              Text('Kiosk mode: ' + (kioskStarted ? 'started' : 'starting...')),
            ],
          ),
        ),
      ),
    );
  }
}
