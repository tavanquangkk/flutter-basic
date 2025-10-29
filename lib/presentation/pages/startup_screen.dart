import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basic_01/presentation/widgets/others/wave_clipper.dart';

class StartupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              ClipPath(
                child: Container(
                  child: Image.asset(
                    "assets/images/wave.png",
                    width: double.infinity,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
