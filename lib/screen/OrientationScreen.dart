import 'package:flutter/material.dart';
import 'package:module10_assigbment/screen/landscape_screen.dart';
import 'package:module10_assigbment/screen/portrait_screen.dart';

class OrientationScreen extends StatelessWidget {
  const OrientationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return orientation == Orientation.portrait
              ? const PortraitScreen()
              : const LandscapeScreen();
        },
      ),
    );
  }
}