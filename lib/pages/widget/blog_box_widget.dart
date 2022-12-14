import 'package:flutter/material.dart';

import '../descriptionpage.dart';

class BlogBoxWidget extends StatelessWidget {
  const BlogBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (BuildContext buildContext) {
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
    );
  }
}
