import 'dart:math';

import 'package:flutter/cupertino.dart';

class SmartDeviceBox extends StatelessWidget {
  final String smartDeviceName;
  final String iconPath;
  final bool powerOn;
  void Function(bool)? onChanged;

  SmartDeviceBox({
    super.key,
    required this.smartDeviceName,
    required this.iconPath,
    required this.powerOn,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            color: powerOn
                ? const Color.fromARGB(255, 252, 251, 248)
                : const Color.fromARGB(255, 76, 84, 90),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                child: Text(
                  smartDeviceName,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: powerOn
                        ? const Color.fromARGB(255, 0, 0, 0)
                        : const Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
              // icon
              Image.asset(
                iconPath,
                height: 70,
                color: powerOn
                    ? const Color.fromARGB(255, 0, 0, 0)
                    : const Color.fromARGB(255, 255, 255, 255),
              ),

              // smart device name + switch
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Transform.scale(
                        scale: 1.4,
                        child: Transform.rotate(
                          angle: 2 * pi,
                          child: Center(
                            child: CupertinoSwitch(
                              value: powerOn,
                              trackColor: const Color.fromARGB(255, 0, 0, 0),
                              activeColor: const Color.fromARGB(255, 0, 0, 0),
                              onChanged: onChanged,
                            ),
                          ),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
