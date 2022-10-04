import 'package:blue_thermal_printer/blue_thermal_printer.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<BluetoothDevice> devices = [];
  BluetoothDevice? selectedDevice;
  BlueThermalPrinter printer = BlueThermalPrinter.instance;

  @override
  void initState() {
    super.initState();
    getDevices();
  }

  void getDevices() async {
    devices = await printer.getBondedDevices();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Thermal Printer Demo")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DropdownButton<BluetoothDevice>(
                value: selectedDevice,
                hint: const Text("Select Thermal Printer"),
                items: devices
                    .map(
                      (e) => DropdownMenuItem(
                        child: Text(e.name!),
                        value: e,
                      ),
                    )
                    .toList(),
                onChanged: (device) {
                  setState(() {
                    selectedDevice = device;
                  });
                },
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  printer.connect(selectedDevice!);
                },
                child: const Text("Connect"),
              ),
              ElevatedButton(
                onPressed: () {
                  printer.disconnect();
                },
                child: const Text("Disconnect"),
              ),
              ElevatedButton(
                onPressed: () async {
                  if ((await printer.isConnected)!) {
                    printer.printNewLine();
                    // SIZE
                    // 0: Normal
                    // 1: Normal - Bold
                    // 2: Medium = Bold
                    // 3: Large - Bold

                    // ALIGN
                    // 0: Left
                    // 1: Center
                    // 2: Right

                    printer.printCustom('Thermal Printer Demo', 0, 1);
                    printer.printQRcode('Thermal Printer Demo', 200, 200, 1);
                  }
                },
                child: const Text("Print"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
