import 'package:flutter/material.dart';
import 'package:flutter_adv_ch_1/todo%20app/provider/home_provider.dart';
import 'package:flutter_adv_ch_1/todo%20app/provider/theme_provider.dart';
import 'package:flutter_adv_ch_1/todo%20app/utils/global.dart';
import 'package:provider/provider.dart';

import 'component/box_input.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    HomeProvider homeProviderTrue =
        Provider.of<HomeProvider>(context, listen: true);
    HomeProvider homeProviderFalse =
        Provider.of<HomeProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Provider.of<ThemeProvider>(context, listen: false).changeTheme();
              Provider.of<ThemeProvider>(context, listen: false).setTheme();
            },
            icon: (Provider.of<ThemeProvider>(context, listen: true).isDark)
                ? const Icon(Icons.light_mode)
                : const Icon(Icons.dark_mode),
          )
        ],
        title: const Text('My Todo App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemBuilder: (context, index) => Card(
            child: ListTile(
              leading: Checkbox(
                value: bool.parse(homeProviderTrue.checkList[index]),
                onChanged: (value) {
                  homeProviderFalse.checkBox(value!, index);
                },
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.edit),
                  ),
                  IconButton(
                    onPressed: () {
                      homeProviderFalse.set();
                      homeProviderFalse.deleteList(index);
                    },
                    icon: const Icon(Icons.delete),
                  )
                ],
              ),
              subtitle: Text(homeProviderTrue.detailsList[index]),
              title: Text(
                homeProviderTrue.taskList[index],
              ),
            ),
          ),
          itemCount: homeProviderTrue.taskList.length,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Add Task'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  boxInput(text: 'Task', controller: txtTask),
                  const SizedBox(
                    height: 10,
                  ),
                  boxInput(text: 'Details', controller: txtDetails),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    homeProviderFalse.set();
                    homeProviderFalse.addList(txtTask.text, txtDetails.text);
                    Navigator.of(context).pop();
                  },
                  child: const Text('Save'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Chanel'),
                ),
              ],
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
