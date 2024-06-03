import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_menu_app/screens/home_screen.dart';

 main()  async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MenuApp());
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
}

class MenuApp extends StatelessWidget {
  const MenuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.padauk().fontFamily,
      ),
      home: HomeScreen(),
    );
  }
}
