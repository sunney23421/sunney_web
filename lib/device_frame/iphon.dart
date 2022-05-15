import 'package:flutter/material.dart';
import 'package:device_frame/device_frame.dart';

class Iphone extends StatefulWidget {
  const Iphone({Key? key}) : super(key: key);

  @override
  State<Iphone> createState() => _IphoneState();
}

class _IphoneState extends State<Iphone> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: DeviceFrame(
      device: Devices.ios.iPhone12,
      isFrameVisible: true,
      orientation: Orientation.portrait,
      screen: Container(
        color: Colors.blue,
        child: Center(child: Text('Hello')),
      ),
    ));
  }
}
