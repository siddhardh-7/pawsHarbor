import 'package:flutter/material.dart';
import 'package:frontend/pages/main_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:frontend/pages/on_boarding_page.dart';
import 'package:flutter/services.dart';

import 'pages/home_page.dart';

bool isOnBoardingSeen = false;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  isOnBoardingSeen = await (prefs.getBool('isOnBoardingSeen') ?? false);
  if (isOnBoardingSeen == false) {
    await prefs.setBool("isOnBoardingSeen", true);
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: const Color(0xFF944FEE),
        textTheme: GoogleFonts.comfortaaTextTheme(Theme.of(context).textTheme),
      ),
      initialRoute: isOnBoardingSeen == false ? OnBoardingPage.id : MainPage.id,
      routes: {
        HomePage.id: (context) => const HomePage(),
        MainPage.id: (context) => const MainPage(),
        OnBoardingPage.id: (context) => const OnBoardingPage(),
      },
    );
  }
}
