import 'package:flutter/material.dart';

import '../descriptionpage.dart';

class BlogBoxWidget extends StatelessWidget {
  const BlogBoxWidget(
      {super.key, required this.title, required this.imagePath});

  final String title;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (BuildContext buildContext) {
          return DescriptionPage(
            title: title,
            imagePath: imagePath,
          );
        }));
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          vertical: 35,
        ),
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
            Image.asset(imagePath),
            ListTile(
              title: Text(title),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
            ),
          ],
        ),
      ),
    );
  }
}
