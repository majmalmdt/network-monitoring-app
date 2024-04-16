import 'package:flutter/material.dart';

class DataUsage extends StatefulWidget {
  const DataUsage({super.key});
  @override
  State<DataUsage> createState() => _DataUsageState();
}

class _DataUsageState extends State<DataUsage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Data Usage"),
        ),
        body: ListView(
            children: ListTile.divideTiles(context: context, tiles: [
          ListTile(
              leading: const Icon(Icons.person),
              title: const Text('192.168.41.2'),
              subtitle: const Text("session starts: 09:37 PM"),
              trailing: TextButton(
                onPressed: () {},
                child: const Text("56 MB"),
              ),
              visualDensity: const VisualDensity(vertical: 4)),
        ]).toList()));
  }
}
