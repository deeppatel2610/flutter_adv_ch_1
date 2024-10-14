import 'package:flutter/material.dart';
import 'package:flutter_adv_ch_1/todo%20app/provider/home_provider.dart';
import 'package:flutter_adv_ch_1/todo%20app/provider/theme_provider.dart';
import 'package:flutter_adv_ch_1/todo%20app/screens/home/home_page.dart';
import 'package:flutter_adv_ch_1/todo%20app/utils/global.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  tempTaskList = sharedPreferences.getStringList('taskList') ?? [];
  tempDetailsList = sharedPreferences.getStringList('detailsList') ?? [];
  tempCheckList = sharedPreferences.getStringList('checkList') ?? [];
  tempIsDark = sharedPreferences.getBool('isDark') ?? false;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeProvider(
            tempTaskList,
            tempDetailsList,
            tempCheckList,
          ),
        ),
        ChangeNotifierProvider(
          create: (context) => ThemeProvider(
            tempIsDark,
          ),
        )
      ],
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        themeMode: (Provider.of<ThemeProvider>(context, listen: true).isDark)
            ? ThemeMode.dark
            : ThemeMode.light,
        home: const HomePage(),
      ),
    );
  }
}
