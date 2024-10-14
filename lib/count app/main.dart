import 'package:flutter/material.dart';
import 'package:flutter_adv_ch_1/count%20app/provider/home%20provider/home_provider.dart';
import 'package:flutter_adv_ch_1/count%20app/screens/home/home_page.dart';
import 'package:flutter_adv_ch_1/count%20app/utils/global.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  countTemp = sharedPreferences.getInt('count') ?? 0;
  indexTemp = sharedPreferences.getInt('index') ?? 0;
  malaCountTemp = sharedPreferences.getInt('malaCount') ?? 0;
  totalCountTemp = sharedPreferences.getInt('totalCount') ?? 0;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeProvider(
        countTemp,
        indexTemp,
        malaCountTemp,
        totalCountTemp,
      ),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}