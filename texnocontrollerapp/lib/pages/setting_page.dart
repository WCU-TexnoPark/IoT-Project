// ignore_for_file: deprecated_member_use, no_leading_underscores_for_local_identifiers, unused_element

import 'package:flutter/material.dart';
import 'home_page.dart';
import 'package:url_launcher/url_launcher.dart';

class setting extends StatelessWidget {
  int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 34, 39, 44),
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

              if (index == 0) {
                Navigator.pop(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
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
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                    iconSize: 30,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.settings,
                      color: Colors.white,
                    )),
              ],
            ),
          )
        ],
        backgroundColor: const Color.fromARGB(255, 34, 39, 44),
        shadowColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(40),
                child: Image.asset(
                  'lib/icons/applogo.png',
                  height: 100,
                  color: const Color.fromARGB(255, 252, 251, 248),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'ABOUT',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Divider(
              thickness: 3,
              color: Color.fromARGB(255, 252, 251, 248),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                iconSize: 50,
                onPressed: () async {
                  const mailurl = 'mailto:texnopark@wcu.edu.az';
                  await launch(mailurl);
                },
                icon: Image.asset(
                  'lib/icons/mail.png',
                  height: 100,
                  color: const Color.fromARGB(255, 252, 251, 248),
                ),
                splashColor: Colors.transparent,
                highlightColor: const Color.fromARGB(255, 46, 52, 59),
              ),
              const SizedBox(
                width: 30,
              ),
              IconButton(
                iconSize: 50,
                onPressed: () async {
                  const giturl = 'https://github.com/WCU-texnoPark/';
                  await launch(giturl);
                },
                icon: Image.asset(
                  'lib/icons/github.png',
                  height: 100,
                  color: const Color.fromARGB(255, 252, 251, 248),
                ),
                splashColor: Colors.transparent,
                highlightColor: const Color.fromARGB(255, 46, 52, 59),
              ),
              const SizedBox(
                width: 30,
              ),
              IconButton(
                iconSize: 50,
                onPressed: () async {
                  const mapurl =
                      'https://www.google.com/maps/place/WCU+TexnoPark/@40.4097359,49.8597182,15z/data=!4m2!3m1!1s0x0:0xfa8066a476f783d?sa=X&ved=2ahUKEwjE7f77gab-AhVuR_EDHSGDAiEQ_BJ6BAhZEAg';
                  await launch(mapurl);
                },
                icon: Image.asset(
                  'lib/icons/map.png',
                  height: 100,
                  color: const Color.fromARGB(255, 252, 251, 248),
                ),
                splashColor: Colors.transparent,
                highlightColor: const Color.fromARGB(255, 46, 52, 59),
              )
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Logic Lords komandası olaraq həm öyrənmək həm də TexnoParkı daha maraqlı, daha əyləncəli hala gətirmək üçün bu aplikasiyanı hazırladıq.",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  void setState(Null Function() param0) {}
}
