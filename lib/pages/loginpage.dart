import 'package:flutter/material.dart';
import 'package:my_first_app/pages/homepage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Welcome",
            style: TextStyle(
                color: Colors.white, fontSize: 35, fontWeight: FontWeight.w800),
          ),
          const Text(
            "to Roberts blog",
            style: TextStyle(
                color: Colors.white70,
                fontSize: 25,
                fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Image.asset("images/urban-welcome.png"),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (BuildContext buildContext) {
                return const Homepage();
              }));
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.red,
                minimumSize: const Size(300, 40)),
            child: const Text("Login"),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                minimumSize: const Size(300, 40)),
            child: const Text("Register"),
          ),
        ],
      )),
    );
  }
}
