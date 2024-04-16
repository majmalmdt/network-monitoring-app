import 'package:flutter/material.dart';
// import 'package:internet_speed_test/internet_speed_test.dart';
// import 'package:internet_speed_test/callbacks_enum.dart';

class SpeedTest extends StatefulWidget {
  const SpeedTest({super.key});
  @override
  State<SpeedTest> createState() => _SpeedTestState();
}

class _SpeedTestState extends State<SpeedTest> {
  // final internetSpeedTest = InternetSpeedTest();
  double downloadRate = 0;
  String unitText = 'Mb/s';

  // @override
  // void initState() {
  //   super.initState();
  //   internetSpeedTest.startDownloadTesting(
  //       onDone: (double transferRate, SpeedUnit unit) {
  //         setState(() {
  //           downloadRate = transferRate;
  //           unitText = unit == SpeedUnit.Kbps ? 'Kb/s' : 'Mb/s';
  //         });
  //       },
  //       testServer: "http://speedtest.net/csv.php?csv=1&ria=0&s=0",
  //       onProgress: (double percent, double transferRate, SpeedUnit unit) {},
  //       onError: (String errorMessage, String speedTestError) {});
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Speed Test"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              downloadRate.toString(),
              style: const TextStyle(
                  fontSize: 66,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey),
            ),
            const Text("MB/s",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey))
          ],
        ),
      ),
    );
  }
}
