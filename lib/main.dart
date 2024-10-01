import 'package:flutter/material.dart';
import 'package:flutter_adv_ch_1/utils/golbal.dart';
import 'package:flutter_adv_ch_1/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: (isDark) ? ThemeMode.dark : ThemeMode.light,
      // routes: routes,

      home: Scaffold(
        body: Center(
          child: Container(
            height: 425,
            width: 350,
            decoration: BoxDecoration(
              color: (isDark) ? Colors.black : Colors.white,
              boxShadow: [
                BoxShadow(
                  color: (isDark) ? Colors.white10 : Colors.black12,
                  blurRadius: 1,
                  spreadRadius: 3,
                )
              ],
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'Yo Man!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "It's a simple example of\ndark theme",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isDark = false;
                    });
                  },
                  child: Container(
                    height: 80,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.yellow.shade700,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      'Light Theme',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isDark = true;
                    });
                  },
                  child: Container(
                    height: 80,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      'Dark Theme',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
