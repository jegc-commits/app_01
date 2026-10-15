import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() => runApp(const PlantitaApp());

class PlantitaApp extends StatelessWidget {
  const PlantitaApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Plantita',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
          useMaterial3: true,
        ),
        home: const SplashScreen(),
      );
}