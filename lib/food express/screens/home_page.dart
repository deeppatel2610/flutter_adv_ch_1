import 'package:flutter/material.dart';
import 'package:flutter_adv_ch_1/food%20express/provider/list_update_provider.dart';
import 'package:flutter_adv_ch_1/food%20express/utils/list.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ListUpdateProvider listUpdateProviderFalse =
        Provider.of<ListUpdateProvider>(context, listen: false);
    ListUpdateProvider listUpdateProviderTrue =
        Provider.of<ListUpdateProvider>(context, listen: true);

    if (listUpdateProviderTrue.isHome) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("home"),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            'Food Express',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
          ),
        ),
        body: Container(
          color: Colors.white,
          child: Column(
            children: [
              screensList[listUpdateProviderTrue.index],
              const SizedBox(
                height: 25,
              ),
              const SizedBox(
                height: 50,
              ),
              if (listUpdateProviderTrue.index <= 1)
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        width: 125,
                        decoration: const BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(50),
                            topRight: Radius.circular(50),
                          ),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          'Skip',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        listUpdateProviderFalse.listUpdate();
                      },
                      child: Container(
                        height: 50,
                        width: 125,
                        decoration: const BoxDecoration(
                          color: Colors.black87,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                            topLeft: Radius.circular(50),
                          ),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          'Next',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              else
                GestureDetector(
                  onTap: () {
                    listUpdateProviderFalse.lastPage();
                    listUpdateProviderFalse.setData();
                  },
                  child: Container(
                    height: 50,
                    width: 170,
                    decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      "Let's Go",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      );
    }
  }
}
