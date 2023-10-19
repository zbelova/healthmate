import 'package:flutter/material.dart';
import 'package:healthmate/presentation/navigation_bar.dart';

import 'data/user_preferences.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await UserPreferences().init();
  runApp(const Healthmate());
}

class Healthmate extends StatelessWidget {
  const Healthmate({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HelathMate',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: HomeNavigationBar(),
    );
  }
}


