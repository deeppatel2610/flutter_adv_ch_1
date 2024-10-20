import 'package:flutter/material.dart';
import 'package:flutter_adv_ch_1/Registration%20Page/provider/stepper_provider.dart';
import 'package:flutter_adv_ch_1/Registration%20Page/screens/registration_Page.dart';
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
        ChangeNotifierProvider(
          create: (context) => StepperProvider(),
        )
      ],
      child: const MaterialApp(
        home: RegistrationPage(),
      ),
    );
  }
}
