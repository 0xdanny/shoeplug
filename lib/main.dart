import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/routing/router.dart';
import 'ui/screens/home/home_screen.dart';
import 'ui/theme/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shoe Plug',
      theme: lightTheme.copyWith(
        textTheme: GoogleFonts.muliTextTheme(
          Theme.of(context).textTheme,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
      onGenerateRoute: (settings) => AppRouter.onGenerateRoute(settings),
    );
  }
}
