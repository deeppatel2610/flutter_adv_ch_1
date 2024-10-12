import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_adv_ch_1/provider/home%20provider/home_provider.dart';
import 'package:provider/provider.dart';

import '../../utils/global.dart';
import 'component/box_count_method.dart';
import 'component/row_count_box.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    HomeProvider homeProviderTrue =
        Provider.of<HomeProvider>(context, listen: true);
    HomeProvider homeProviderFalse =
        Provider.of<HomeProvider>(context, listen: false);

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(images[homeProviderTrue.index]),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              /// top box -> total count
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      Container(
                        height: 126,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.black54,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.white10,
                              spreadRadius: 2,
                              blurRadius: 2,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  rowCountBox(
                                    title: 'Mala Count :',
                                    isX: true,
                                    text1: '108',
                                    text2:
                                        homeProviderTrue.malaCount.toString(),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  rowCountBox(
                                    isX: false,
                                    title: 'Total count :',
                                    text1:
                                        homeProviderTrue.totalCount.toString(),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  rowCountBox(
                                    isX: false,
                                    text1: homeProviderTrue.count.toString(),
                                    title: 'Current Count :',
                                  )
                                ],
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const VerticalDivider(),
                              ElevatedButton(
                                style: const ButtonStyle(
                                  backgroundColor:
                                      WidgetStatePropertyAll(Colors.black),
                                ),
                                onPressed: () {
                                  homeProviderFalse.resetCount();
                                },
                                child: const Text(
                                  'reset',
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              /// box 1
              Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.white12,
                        spreadRadius: 5,
                        blurRadius: 5,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),

              /// box 2
              Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Transform.rotate(
                  angle: pi / 4,
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.white10,
                          spreadRadius: 5,
                          blurRadius: 5,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),

              /// box 3
              Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: GestureDetector(
                  onTap: () {
                    homeProviderFalse.countAdd();
                    homeProviderFalse.set(
                      homeProviderTrue.count,
                      homeProviderTrue.totalCount,
                      homeProviderTrue.malaCount,
                      homeProviderTrue.index,
                    );
                  },
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      homeProviderTrue.count.toString(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),

              /// image controller
              Padding(
                padding: const EdgeInsets.only(bottom: 100),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        homeProviderFalse.imageListLeft();
                        homeProviderFalse.set(
                          homeProviderTrue.count,
                          homeProviderTrue.totalCount,
                          homeProviderTrue.malaCount,
                          homeProviderTrue.index,
                        );
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_new_outlined,
                        size: 35,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        homeProviderFalse.imageListRight();
                        homeProviderFalse.set(
                          homeProviderTrue.count,
                          homeProviderTrue.totalCount,
                          homeProviderTrue.malaCount,
                          homeProviderTrue.index,
                        );
                      },
                      icon: const Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 35,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}



