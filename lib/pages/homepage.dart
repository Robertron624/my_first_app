import 'package:flutter/material.dart';
import 'package:my_first_app/pages/descriptionpage.dart';
import 'package:my_first_app/pages/loginpage.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Color backgroundColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  if (backgroundColor == Colors.white) {
                    backgroundColor = Colors.red;
                  } else {
                    backgroundColor = Colors.white;
                  }
                });
              },
              icon: const Icon(Icons.color_lens))
        ],
      ),
      drawer: SafeArea(
        child: Drawer(
          child: Column(
            children: [
              const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.red,
                  ),
                  child: ListTile(
                    title: Text(
                      "Robert's blog",
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                  )),
              ListTile(
                onTap: (() {}),
                leading: const Icon(Icons.settings),
                title: const Text(
                  "Settings",
                  style: TextStyle(color: Colors.black54, fontSize: 20.0),
                ),
              ),
              ListTile(
                onTap: (() {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (BuildContext buildContext) {
                    return const LoginPage();
                  }));
                }),
                leading: const Icon(Icons.logout),
                title: const Text(
                  "Logout",
                  style: TextStyle(color: Colors.black54, fontSize: 20.0),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 5.0,
              ),
              child: Wrap(
                spacing: 10,
                children: [
                  ElevatedButton(
                    onPressed: (() {}),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.amber,
                      shape: const StadiumBorder(),
                    ),
                    child: const Text("Money"),
                  ),
                  ElevatedButton(
                    onPressed: (() {}),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.amber,
                      shape: const StadiumBorder(),
                    ),
                    child: const Text("Bitcoin"),
                  ),
                  ElevatedButton(
                    onPressed: (() {}),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.amber,
                      shape: const StadiumBorder(),
                    ),
                    child: const Text("Stock Market"),
                  ),
                  ElevatedButton(
                    onPressed: (() {}),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.amber,
                      shape: const StadiumBorder(),
                    ),
                    child: const Text("House Market"),
                  ),
                  ElevatedButton(
                    onPressed: (() {}),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.amber,
                      shape: const StadiumBorder(),
                    ),
                    child: const Text("Diamonds Hands"),
                  ),
                ],
              ),
            ),
            // First post
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext buildContext) {
                  return const DescriptionPage(
                    title: "How to get rich?",
                    imagePath: "images/girl-with-big-phone.png",
                  );
                }));
              },
              child: Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 5.0,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.green,
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black,
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset(2, 2)),
                  ],
                ),
                child: Column(
                  children: [
                    Image.asset("images/girl-with-big-phone.png"),
                    const ListTile(
                      title: Text("How to get rich ?"),
                      trailing: Icon(Icons.arrow_forward_ios_rounded),
                    ),
                  ],
                ),
              ),
            ),
            // Second post
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext buildContext) {
                  return const DescriptionPage(
                    title: "How to achieve your potential?",
                    imagePath: "images/rocket.png",
                  );
                }));
              },
              child: Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 5.0,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.green,
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black,
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset(2, 2)),
                  ],
                ),
                child: Column(children: [
                  Image.asset("images/rocket.png"),
                  const ListTile(
                    title: Text("How to achieve your potential?"),
                    trailing: Icon(Icons.arrow_forward_ios_rounded),
                  ),
                ]),
              ),
            ),
            // Third post
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext buildContext) {
                  return const DescriptionPage(
                    title: "How to manage your financial life?",
                    imagePath: "images/girl-sitting-on-wallet.png",
                  );
                }));
              },
              child: Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 5.0,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.green,
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black,
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset(2, 2)),
                  ],
                ),
                child: Column(children: [
                  Image.asset("images/girl-sitting-on-wallet.png"),
                  const ListTile(
                    title: Text("How to manage your financial life?"),
                    trailing: Icon(Icons.arrow_forward_ios_rounded),
                  ),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
