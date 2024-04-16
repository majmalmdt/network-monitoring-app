// import 'package:flutter/material.dart';

// class DeviceList extends StatefulWidget {
//   const DeviceList({super.key});
//   @override
//   State<DeviceList> createState() => _DeviceListState();
// }

// class _DeviceListState extends State<DeviceList> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: const Text("Device List"),
//         ),
//         body: ListView(
//             children: ListTile.divideTiles(context: context, tiles: [
//           ListTile(
//               leading: const Icon(Icons.person),
//               title: const Text('192.168.41.2'),
//               subtitle: const Text("session starts: 09:37 PM"),
//               trailing: TextButton(
//                 onPressed: () {},
//                 child: const Text("Remove"),
//               ),
//               visualDensity: const VisualDensity(vertical: 4)),
//         ]).toList()));
//   }
// }

import 'package:flutter/material.dart';
import 'package:hotspot_manager/hotspot_manager.dart';

class DeviceList extends StatefulWidget {
  const DeviceList({super.key});

  @override
  _DeviceListState createState() => _DeviceListState();
}

class _DeviceListState extends State<DeviceList> {
  List<String> connectedDevices = [];

  @override
  void initState() {
    super.initState();
    _getConnectedDevices();
  }

  Future<void> _getConnectedDevices() async {
    print(await HotspotManager().getConnectedDevices());
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: connectedDevices.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(connectedDevices[index]),
        );
      },
    );
  }
}
