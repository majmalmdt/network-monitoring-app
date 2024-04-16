import 'package:flutter/material.dart';

class BlockDevices extends StatefulWidget {
  const BlockDevices({super.key});
  @override
  State<BlockDevices> createState() => _BlockDevicesState();
}

class _BlockDevicesState extends State<BlockDevices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Block Devices"),
        ),
        body: ListView(
            children: ListTile.divideTiles(context: context, tiles: [
          ListTile(
              leading: const Icon(Icons.person),
              title: const Text('192.168.41.2'),
              subtitle: const Text("Connected"),
              trailing: TextButton(
                onPressed: () {},
                child: const Text("Block"),
              ),
              visualDensity: const VisualDensity(vertical: 4)),
          ListTile(
              leading: const Icon(Icons.person),
              title: const Text('192.168.41.3'),
              subtitle: const Text("Blocked"),
              trailing: TextButton(
                onPressed: () {},
                child: const Text("Un Block"),
              ),
              visualDensity: const VisualDensity(vertical: 4)),
          ListTile(
              leading: const Icon(Icons.person),
              title: const Text('192.168.41.4'),
              subtitle: const Text("Disconnected"),
              trailing: TextButton(
                onPressed: () {},
                child: const Text("Block"),
              ),
              visualDensity: const VisualDensity(vertical: 4)),
        ]).toList()));
  }
}
