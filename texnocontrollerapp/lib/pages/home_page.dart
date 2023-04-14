import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'setting_page.dart';
import '../util/smart_device_box.dart';
import '../util/smart_device_box_piano.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    getDataFirebase();
  }

  int _currentIndex = 0;
  final double horizontalPadding = 20;
  final double verticalPadding = 25;

  // list of smart devices
  List mySmartDevices = [
    // [ smartDeviceName, iconPath , powerStatus ]
    ["Rocket Led", "lib/icons/light-bulb.png", false],
    ["Out Led", "lib/icons/air-conditioner.png", false],
    ["Piano", "lib/icons/music.png", false],
  ];

  void getDataFirebase() async {
    final ref = FirebaseDatabase.instance.ref();

    final snapshotrocket = await ref.child('controller/leds/rocket-led').get();
    final snapshotout = await ref.child('controller/leds/out-led').get();

    if (snapshotrocket.exists && snapshotrocket.value == true) {
      setState(() {
        mySmartDevices[0][2] = true;
      });
    } else {
      setState(() {
        mySmartDevices[0][2] = false;
      });
    }
    if (snapshotout.exists && snapshotout.value == true) {
      setState(() {
        mySmartDevices[1][2] = true;
      });
    } else {
      setState(() {
        mySmartDevices[1][2] = false;
      });
    }
  }

  // power button switched
  void powerSwitchChanged1(bool value, int index) {
    FirebaseDatabase.instance
        .ref('controller/leds/rocket-led')
        .set(value)
        .then((_) {})
        .catchError((error) {});
    setState(() {
      mySmartDevices[0][2] = value;
    });
  }

  void powerSwitchChanged2(bool value, int index) {
    FirebaseDatabase.instance
        .ref('controller/leds/out-led')
        .set(value)
        .then((_) {})
        .catchError((error) {});
    setState(() {
      mySmartDevices[1][2] = value;
    });
  }

  void powerSwitchChanged3(bool value, int index) {
    FirebaseDatabase.instance
        .ref('controller/piano')
        .set(value)
        .then((_) {})
        .catchError((error) {});
    setState(() {
      mySmartDevices[2][2] = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        margin: const EdgeInsets.only(top: 65),
        child: FloatingActionButton(
          splashColor: Colors.transparent,
          onPressed: () {},
          backgroundColor: const Color.fromARGB(255, 62, 69, 77),
          child: const Icon(
            Icons.add,
            size: 40,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: const Color.fromARGB(255, 34, 39, 44),
      appBar: AppBar(
        toolbarHeight: 75,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 75, horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'TexnoApp',
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontFamily: 'SquadaOne',
                    fontSize: 42,
                    color: Color.fromARGB(255, 252, 251, 248)),
              ),
              Image.asset(
                'lib/icons/applogo.png',
                height: 35,
                color: const Color.fromARGB(255, 252, 251, 248),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "DEVICES",
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 26,
                              color: Color.fromARGB(255, 252, 251, 248),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Divider(
                          thickness: 3,
                          color: Color.fromARGB(255, 252, 251, 248),
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: double.infinity,
                        child: Row(
                          children: [
                            Expanded(
                              child: SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.3,
                                child: SmartDeviceBox(
                                  smartDeviceName: mySmartDevices[0][0],
                                  iconPath: mySmartDevices[0][1],
                                  powerOn: mySmartDevices[0][2],
                                  onChanged: (value) =>
                                      powerSwitchChanged1(value, 0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.3,
                                child: SmartDeviceBox(
                                  smartDeviceName: mySmartDevices[1][0],
                                  iconPath: mySmartDevices[1][1],
                                  powerOn: mySmartDevices[1][2],
                                  onChanged: (value) =>
                                      powerSwitchChanged2(value, 1),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Flexible(
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height * 0.3,
                          child: SmartDeviceBoxPiano(
                            smartDevicePiano: mySmartDevices[2][0],
                            iconPathPiano: mySmartDevices[2][1],
                            powerOnPiano: mySmartDevices[2][2],
                            onChangedPiano: (value) =>
                                powerSwitchChanged3(value, 2),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: Container(
          height: 70,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 46, 52, 59),
            boxShadow: [],
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _currentIndex,
            onTap: (int index) {
              setState(() {
                _currentIndex = index;
              });

              if (index == 1) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => setting()),
                );
              }
            },
            backgroundColor: const Color.fromARGB(255, 46, 52, 59),
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: const Color.fromARGB(255, 255, 255, 255),
            unselectedItemColor: const Color.fromARGB(255, 97, 97, 97),
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('lib/icons/house.png'),
                  size: 30,
                ),
                label: 'home',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('lib/icons/menu.png'),
                  size: 30,
                ),
                label: 'setting',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
