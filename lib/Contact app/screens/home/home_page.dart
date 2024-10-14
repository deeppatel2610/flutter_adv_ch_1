import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../utils/global.dart';
import 'component/box_info_method.dart';
import 'component/box_info_social_method.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.black,
        elevation: 2,
        title: const Text(
          'Contact Us',
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            const Text(
              "If you have any queries, get in touch with us. We will be happy to help you!",
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 25,
            ),
            GestureDetector(
              onTap: () async {
                Uri uri = Uri.parse('tel:+91 63536-14861');
                await launchUrl(uri);
              },
              child: boxInfoMethod(
                icon: Icons.phone_android,
                info: '+91 63536 14861',
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () async {
                Uri uri = Uri.parse('mailto:deeppatel100267@gmail.com');
                await launchUrl(uri);
              },
              child: boxInfoMethod(
                icon: Icons.mail_outline,
                info: 'deeppatel100267@gmail.com',
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () async {
                Uri uri = Uri.parse('sms:6353614861');
                await launchUrl(uri);
              },
              child: boxInfoMethod(
                icon: Icons.sms_failed_outlined,
                info: '63536 14861',
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              height: 285,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.blue.shade100),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Social Media',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    GestureDetector(
                      onTap: () async {
                        Uri uri = Uri.parse(
                          'https://github.com/deeppatel2610',
                        );
                        await launchUrl(uri, mode: LaunchMode.inAppWebView);
                      },
                      child: boxInfoSocialMethod(
                        img: img1,
                        text: 'deeppatel2610',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () async {
                        Uri uri = Uri.parse(
                          'https://www.linkedin.com/in/deep-patel-5549492b9/',
                        );
                        await launchUrl(uri, mode: LaunchMode.inAppWebView);
                      },
                      child: boxInfoSocialMethod(
                        img: img2,
                        text: 'Deep Patel',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () async {
                        Uri uri = Uri.parse(
                          'https://www.instagram.com/its_deep_2.26/',
                        );
                        await launchUrl(uri, mode: LaunchMode.inAppWebView);
                      },
                      child: boxInfoSocialMethod(
                        img: img3,
                        text: 'its_deep_2.26',
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
