
import 'package:ampcome_tech_pri_lim_task/model/a05_temp_array.dart';
import 'package:ampcome_tech_pri_lim_task/screens/a01_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => FavouriteItemProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          inputDecorationTheme: const InputDecorationTheme(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: Colors.white54),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: Colors.white),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.white54),
              )
          ),
        ),
        home: const HomeScreen(),
      ),
    );
  }
}

