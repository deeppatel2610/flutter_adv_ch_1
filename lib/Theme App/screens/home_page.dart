import 'package:flutter/material.dart';
import 'package:flutter_adv_ch_1/Theme%20App/provider/theme/theme_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        shadowColor: Theme.of(context).colorScheme.onSecondary,
        elevation: 5,
        actions: [
          Icon(
            Icons.add_circle_outline,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
          SizedBox(
            width: 10,
          ),
        ],
        leading: Icon(
          Icons.arrow_back_ios_new,
          color: Theme.of(context).colorScheme.onPrimary,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Theme.of(context).colorScheme.onSecondary,
                      blurRadius: 3,
                      spreadRadius: .2,
                    ),
                  ],
                  image: DecorationImage(
                      image: NetworkImage(img), fit: BoxFit.cover),
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Center(
              child: Text(
                'Deep Patel',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.onSurface,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Divider(
              color: Theme.of(context).colorScheme.onSurface,
            ),
            const SizedBox(
              height: 20,
            ),
            rowMethod(
              context: context,
              text: "deep",
              icon: Icons.add,
              isText: true,
              isChangeIcon: true,
              isSwitch: true,
            ),
            const SizedBox(
              height: 15,
            ),
            rowMethod(
              context: context,
              text: "Story",
              icon: Icons.list,
              isText: false,
              isChangeIcon: false,
              isSwitch: false,
            ),
            const SizedBox(
              height: 20,
            ),
            rowMethod(
              context: context,
              text: "Setting and Privacy",
              icon: Icons.settings,
              isText: false,
              isChangeIcon: false,
              isSwitch: false,
            ),
            const SizedBox(
              height: 20,
            ),
            rowMethod(
              context: context,
              text: "Help Center",
              icon: Icons.mark_unread_chat_alt,
              isText: false,
              isChangeIcon: false,
              isSwitch: false,
            ),
            const SizedBox(
              height: 20,
            ),
            rowMethod(
              context: context,
              text: "Notification",
              icon: Icons.notifications,
              isText: false,
              isChangeIcon: false,
              isSwitch: false,
            ),
          ],
        ),
      ),
    );
  }

  Row rowMethod({
    required BuildContext context,
    required IconData icon,
    required String text,
    required bool isChangeIcon,
    required bool isSwitch,
    required bool isText,
  }) {
    return Row(
      children: [
        (isChangeIcon)
            ? Icon(
                Provider.of<ThemeProvider>(context, listen: true).isDark
                    ? Icons.dark_mode
                    : Icons.light_mode,
                size: 30,
              )
            : Icon(
                icon,
                size: 30,
              ),
        const SizedBox(
          width: 20,
        ),
        (isText)
            ? Text(
                Provider.of<ThemeProvider>(context, listen: true).isDark
                    ? 'Dark Mode'
                    : 'Light Mode',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                  fontSize: 19,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1,
                ),
              )
            : Text(
                text,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                  fontSize: 19,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1,
                ),
              ),
        const Spacer(),
        (isSwitch)
            ? Switch(
                value: Provider.of<ThemeProvider>(context, listen: true).isDark,
                onChanged: (value) {
                  Provider.of<ThemeProvider>(context, listen: false)
                      .changeTheme(value);
                },
              )
            : const SizedBox(),
      ],
    );
  }
}

String img =
    'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500';
