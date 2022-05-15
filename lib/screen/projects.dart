import 'package:flutter/material.dart';
import 'package:device_frame/device_frame.dart';
import 'package:sunney_web/device_frame/desktop.dart';
import 'package:sunney_web/device_frame/iphon.dart';
import 'package:sunney_web/device_frame/otherDevice.dart';

class Projects extends StatefulWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(
      initialPage: 0,
    );
    return PageView(
      scrollDirection: Axis.horizontal,
      controller: controller,
      children: const[
        Iphone(),
        Desktop(),
        OtherDevice()
        //just use card
      ],
    );
  }
}
