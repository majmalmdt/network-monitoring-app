import 'package:flutter/material.dart';
import 'package:network_app/pages/block_devices.dart';
import 'package:network_app/pages/data_usage.dart';
import 'package:network_app/pages/device_list.dart';
import 'package:network_app/pages/password_stregth.dart';
import 'package:network_app/pages/speed_test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Network Monitor',
        theme: ThemeData(
            primaryColor: Colors.black87,
            // listTileTheme: const ListTileThemeData(
            //   tileColor: Color.fromARGB(255, 206, 226, 238),
            //   textColor: Colors.black,
            //   iconColor: Colors.black,
            // ),
            useMaterial3: true),
        home: const MyHomePage(title: 'Home Network Monitor'),
        debugShowCheckedModeBanner: false);
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: ListView(
            children: ListTile.divideTiles(
          context: context,
          tiles: [
            ListTile(
                leading: const Icon(Icons.device_hub_rounded),
                title: const Text('Device List'),
                onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DeviceList()),
                    ),
                visualDensity: const VisualDensity(vertical: 4)),
            ListTile(
                leading: const Icon(Icons.data_usage),
                title: const Text('Data Usage'),
                onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DataUsage()),
                    ),
                visualDensity: const VisualDensity(vertical: 4)),
            ListTile(
                leading: const Icon(Icons.app_blocking),
                title: const Text('Block Device'),
                onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BlockDevices()),
                    ),
                visualDensity: const VisualDensity(vertical: 4)),
            ListTile(
                leading: const Icon(Icons.speed),
                title: const Text('Speed Test'),
                onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SpeedTest()),
                    ),
                visualDensity: const VisualDensity(vertical: 4)),
            ListTile(
                leading: const Icon(Icons.wifi_password),
                title: const Text('Password Strength'),
                onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PasswordStrength()),
                    ),
                visualDensity: const VisualDensity(vertical: 4)),
          ],
        ).toList()));
  }
}
