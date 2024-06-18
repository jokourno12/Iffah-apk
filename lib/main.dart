import 'package:flutter/material.dart';
import 'package:iffah_apk/components/bottom_navigation.dart'; // Sesuaikan dengan lokasi file bottom_navigation.dart Anda
import 'package:iffah_apk/pages/home_page.dart'; // Sesuaikan dengan lokasi file home_page.dart Anda
import 'package:iffah_apk/pages/search_page.dart'; // Sesuaikan dengan lokasi file search_page.dart Anda
import 'package:iffah_apk/pages/message_page.dart'; // Sesuaikan dengan lokasi file message_page.dart Anda
import 'package:iffah_apk/pages/profile_page.dart'; // Sesuaikan dengan lokasi file profile_page.dart Anda

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Iffah',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Iffah'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _currentIndex = 0; // State untuk mengatur indeks tab yang aktif

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
      // Handle navigasi atau aksi lainnya berdasarkan index tab
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: _getPage(_currentIndex), // Tampilkan halaman berdasarkan currentIndex
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigation(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
      ),
    );
  }

  Widget _getPage(int index) {
    switch (index) {
      case 0:
        return HomePage(); // Tampilkan HomePage untuk index 0
      case 1:
        return SearchPage(); // Tampilkan SearchPage untuk index 1
      case 2:
        return MessagePage(); // Tampilkan MessagePage untuk index 2
      case 3:
        return ProfilePage(); // Tampilkan ProfilePage untuk index 3
      default:
        return Container(); // Pengaman jika index tidak dikenali
    }
  }
}
