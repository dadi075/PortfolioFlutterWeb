import 'package:flutter/material.dart';
import 'package:github_profile2/providers/theme_provider.dart';
import 'package:provider/provider.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
      builder: (context, _) {
        final themeProvider = Provider.of<ThemeProvider>(context);

        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Nagy Dávid - Fullstack developer',
          theme: ThemeData(
              brightness: Brightness.light,
          ),
          darkTheme: ThemeData(
              brightness: Brightness.dark
          ),
          themeMode: themeProvider.themeMode,
          home: Home(),
        );
      }, create: (context) => ThemeProvider(),
  );
}
