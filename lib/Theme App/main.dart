import 'package:flutter/material.dart';
import 'package:flutter_adv_ch_1/Theme%20App/provider/theme/theme_provider.dart';
import 'package:flutter_adv_ch_1/Theme%20App/screens/home_page.dart';
import 'package:flutter_adv_ch_1/Theme%20App/utils/theme/theme_change.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeChange.lightTheme,
        darkTheme: ThemeChange.darkTheme,
        themeMode: Provider.of<ThemeProvider>(context, listen: true).isDark
            ? ThemeMode.dark
            : ThemeMode.light,
        home: const HomePage(),
      ),
    );
  }
}
