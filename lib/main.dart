import 'package:flutter/material.dart';
import 'choice_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Color(0xFF994CD3),
        ),
        scaffoldBackgroundColor: Colors.white,
      ),
      home: Choice(),
      debugShowCheckedModeBanner: false,
    );
  }
}
