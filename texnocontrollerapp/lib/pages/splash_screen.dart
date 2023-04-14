import 'package:flutter/material.dart';
import 'home_page.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 1500), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 62, 69, 77),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          Image.asset(
            'lib/icons/applogo.png',
            height: 200,
            color: Colors.white,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'TexnoApp',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'SquadaOne',
                fontSize: 54,
                color: Color.fromARGB(255, 252, 251, 248)),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.33,
          ),
          const Text(
            'by LogicLords',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
        ]),
      ),
    );
  }
}
