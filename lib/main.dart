import 'package:flutter/material.dart';
import 'screens/collection_page.dart';
import 'screens/diary_page.dart';
import 'screens/home_page.dart';
import 'screens/library_page.dart';
import 'screens/profile_page.dart';
import 'screens/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // remove debug banner
      debugShowCheckedModeBanner: false,
      routes: {
        '/login': (context) => LoginPage(),
        '/home': (context) => const HomePage(),
        '/collection': (context) => const CollectionPage(),
        '/diary': (context) => const DiaryPage(),
        '/library': (context) => const LibraryPage(),
        '/profile': (context) => const ProfilePage()
      },
      initialRoute: '/login',
    );
  }
}
