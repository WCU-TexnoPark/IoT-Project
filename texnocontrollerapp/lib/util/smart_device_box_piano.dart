import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SmartDeviceBoxPiano extends StatelessWidget {
  final String smartDevicePiano;
  final String iconPathPiano;
  final bool powerOnPiano;
  void Function(bool)? onChangedPiano;

  SmartDeviceBoxPiano({
    super.key,
    required this.smartDevicePiano,
    required this.iconPathPiano,
    required this.powerOnPiano,
    required this.onChangedPiano,
  });

  get onPressed => null;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            color: powerOnPiano
                ? const Color.fromARGB(255, 252, 251, 248)
                : const Color.fromARGB(255, 76, 84, 90),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 5),
                      child: Text(
                        smartDevicePiano,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: powerOnPiano
                              ? const Color.fromARGB(255, 0, 0, 0)
                              : const Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // pianoDil
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          if (powerOnPiano == true) {
                            print('Do');
                          } else {
                            print('Nope.');
                          }
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 2),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromARGB(255, 34, 39, 44),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          height: MediaQuery.of(context).size.height * 0.1,
                          child: const Center(
                            child: Text('Do'),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkResponse(
                        onTap: () {
                          if (powerOnPiano == true) {
                            print('Re');
                          } else {
                            print('Nope.');
                          }
                        },
                        hoverColor: Colors.grey,
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 2),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromARGB(255, 34, 39, 44),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          height: MediaQuery.of(context).size.height * 0.1,
                          child: const Center(
                            child: Text('Re'),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          if (powerOnPiano == true) {
                            print('Mi');
                          } else {
                            print('Nope.');
                          }
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 2),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromARGB(255, 34, 39, 44),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          height: MediaQuery.of(context).size.height * 0.1,
                          child: const Center(
                            child: Text('Mi'),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          if (powerOnPiano == true) {
                            print('Fa');
                          } else {
                            print('Nope.');
                          }
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 2),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromARGB(255, 34, 39, 44),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          height: MediaQuery.of(context).size.height * 0.1,
                          child: const Center(
                            child: Text('Fa'),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          if (powerOnPiano == true) {
                            print('Sol');
                          } else {
                            print('Nope.');
                          }
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 2),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromARGB(255, 34, 39, 44),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          height: MediaQuery.of(context).size.height * 0.1,
                          child: const Center(
                            child: Text('Sol'),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          if (powerOnPiano == true) {
                            print('Lya');
                          } else {
                            print('Nope.');
                          }
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 2),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromARGB(255, 34, 39, 44),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          height: MediaQuery.of(context).size.height * 0.1,
                          child: const Center(
                            child: Text('Lya'),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          if (powerOnPiano == true) {
                            print('Si');
                          } else {
                            print('Nope.');
                          }
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 2),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromARGB(255, 34, 39, 44),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          height: MediaQuery.of(context).size.height * 0.1,
                          child: const Center(
                            child: Text('Si'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Transform.scale(
                          scale: 1.4,
                          child: Transform.rotate(
                            angle: 2 * pi,
                            child: Center(
                              child: CupertinoSwitch(
                                value: powerOnPiano,
                                trackColor: const Color.fromARGB(255, 0, 0, 0),
                                activeColor: const Color.fromARGB(255, 0, 0, 0),
                                onChanged: onChangedPiano,
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}
