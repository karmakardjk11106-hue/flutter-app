import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'travel_buddy.dart';
import 'mood_suggestions.dart';
import 'sos_screen.dart';
import 'screens/booking_home_screen.dart'; // Unified Booking tab
import 'chat_screen.dart';

void main() {
  runApp(const TrailTaleApp());
}

class TrailTaleApp extends StatelessWidget {
  const TrailTaleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TrailTale',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        fontFamily: 'Poppins',
      ),
      debugShowCheckedModeBanner: false,
      home: const MainNavigation(),
    );
  }
}

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    HomeScreen(),
    TravelBuddy(), // <-- This is your Travel Buddy screen
    MoodSuggestions(),
    SosScreen(),
    BookingHomeScreen(),
    ChatScreen(),
  ];

  final List<String> _titles = [
    "Home",
    "Travel Buddy",
    "Mood Suggestions",
    "SOS",
    "Booking",
    "Chatbot",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titles[_currentIndex]),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.teal, Colors.green, Colors.blue],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.group), label: "Buddy"), // <-- This is for Travel Buddy
          BottomNavigationBarItem(icon: Icon(Icons.emoji_emotions), label: "Mood"),
          BottomNavigationBarItem(icon: Icon(Icons.sos), label: "SOS"),
          BottomNavigationBarItem(icon: Icon(Icons.hotel), label: "Booking"),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chatbot"),
        ],
      ),
    );
  }
}
