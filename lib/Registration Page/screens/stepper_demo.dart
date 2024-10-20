import 'package:flutter/material.dart';
import 'package:flutter_adv_ch_1/Registration%20Page/provider/stepper_provider.dart';
import 'package:provider/provider.dart';

import 'registration_Page.dart';

class StepperDemo extends StatelessWidget {
  const StepperDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.black,
        elevation: 5,
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text(
          'Flutter Stepper Demo',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            letterSpacing: 1,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height:260,
            child: Stepper(
              type: StepperType.horizontal,
              currentStep:
                  Provider.of<StepperProvider>(context, listen: true).count,
              onStepContinue: () {
                Provider.of<StepperProvider>(context, listen: false).addCount();
              },
              onStepCancel: () {
                Provider.of<StepperProvider>(context, listen: false)
                    .removeCount();
              },
              steps: [
                Step(
                  title: const Text('Personal'),
                  content: const Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Personal',
                          labelStyle: TextStyle(color: Colors.blueGrey),
                        ),
                      )
                    ],
                  ),
                  isActive:
                      Provider.of<StepperProvider>(context, listen: true).count >=
                          0,
                  state:
                      Provider.of<StepperProvider>(context, listen: true).count >=
                              1
                          ? StepState.complete
                          : StepState.disabled,
                ),
                Step(
                  title: const Text('Contact'),
                  content: const Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Contact',
                          labelStyle: TextStyle(color: Colors.blueGrey),
                        ),
                      )
                    ],
                  ),
                  isActive:
                      Provider.of<StepperProvider>(context, listen: true).count >=
                          1,
                  state:
                      Provider.of<StepperProvider>(context, listen: true).count >=
                              2
                          ? StepState.editing
                          : StepState.disabled,
                ),
                Step(
                    title: const Text('Upload'),
                    content: const Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Upload',
                            labelStyle: TextStyle(color: Colors.blueGrey),
                          ),
                        )
                      ],
                    ),
                    isActive: Provider.of<StepperProvider>(context, listen: true)
                            .count >=
                        2,
                    state: Provider.of<StepperProvider>(context, listen: true)
                                .count >=
                            2
                        ? StepState.complete
                        : StepState.disabled)
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: GestureDetector(
        onTap: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => const RegistrationPage(),
          ));
        },
        child: Container(
          height: 65,
          width: 65,
          decoration: const BoxDecoration(
            color: Colors.blue,
            shape: BoxShape.circle,
          ),
          alignment: Alignment.center,
          child: const Icon(
            Icons.change_circle_outlined,
            color: Colors.white,
            size: 30,
          ),
        ),
      ),
    );
  }
}
