import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'screens/pin_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  await Hive.initFlutter();
  await Hive.openBox('transactions_box');
  await Hive.openBox('user_settings');

  runApp(const IscoApp());
}

class IscoApp extends StatelessWidget {
  const IscoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Isco Wallet',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF00875A),
          primary: const Color(0xFF00875A),
          secondary: const Color(0xFFFF9900),
        ),
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF4F6F8),
      ),
      home: const PinScreen(),
    );
  }
}
