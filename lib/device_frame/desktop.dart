import 'package:flutter/material.dart';
import 'package:device_frame/device_frame.dart';

class Desktop extends StatefulWidget {
  const Desktop({Key? key}) : super(key: key);

  @override
  State<Desktop> createState() => _DesktopState();
}

class _DesktopState extends State<Desktop> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: DeviceFrame(
      device: Devices.windows.laptop,
      isFrameVisible: true,
      orientation: Orientation.portrait,
      screen: Container(
        color: Colors.blue,
        child: Center(child: Text('Hello')),
      ),
      
    ));
  }
}
