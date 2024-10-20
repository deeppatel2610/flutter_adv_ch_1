import 'package:flutter/material.dart';
import 'package:flutter_adv_ch_1/food%20express/provider/list_update_provider.dart';
import 'package:flutter_adv_ch_1/food%20express/screens/home_page.dart';
import 'package:flutter_adv_ch_1/food%20express/screens/home_temp_page.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  isHomeTemp = preferences.getBool('isHome') ?? false;

  runApp(const MyApp());
}

bool isHomeTemp = false;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ListUpdateProvider(isHomeTemp),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
