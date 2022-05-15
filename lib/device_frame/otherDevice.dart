import 'package:flutter/material.dart';
import 'package:device_frame/device_frame.dart';

class OtherDevice extends StatefulWidget {
  const OtherDevice({Key? key}) : super(key: key);

  @override
  State<OtherDevice> createState() => _OtherDeviceState();
}

class _OtherDeviceState extends State<OtherDevice> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: DeviceFrame(
      device: Devices.windows.wideMonitor,
      isFrameVisible: true,
      orientation: Orientation.portrait,
      screen: Container(
        color: Colors.blue,
        child: Center(child: Text('Hello')),
      ),
    ));
  }
}
