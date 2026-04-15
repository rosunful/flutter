import 'package:flutter/material.dart';

void main() {
  runApp(DaySix());
}

class DaySix extends StatelessWidget {
  const DaySix({super.key});

  @override
  Widget build(BuildContext context) {
    var arrList = [
      'naruto',
      'minato',
      'jiraiya',
      'tsunade',
      'orochimaru',
      'madara',
      'konahamaru',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("hari om")),
        body: Column(
          children: [
            ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ListTile(
                  key: ValueKey(index),
                  leading: Text("${index + 1}"),
                  title: Text(arrList[index]),
                  subtitle: Text("NUmber"),
                  trailing: Icon(Icons.add),
                );
              },
              itemCount: arrList.length,
              separatorBuilder: (context, index) {
                return Divider(height: 2,thickness: 1.5,);
              },
            ),
          ],
        ),
      ),
    );
  }
}
