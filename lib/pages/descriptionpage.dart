import 'package:flutter/material.dart';

String ipsumText = """
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec finibus, lectus eu sollicitudin eleifend, magna velit euismod dui, in luctus ante dui vel mi. Morbi et dolor blandit nisl aliquet lacinia. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam purus mi, tincidunt non magna sollicitudin, faucibus vulputate nulla. Maecenas eros turpis, laoreet et nisi id, ornare tempor ex. Aenean quis neque sit amet enim tincidunt consectetur. Quisque laoreet felis ut lectus tristique, eu pharetra nisi mollis. Sed magna sem, ornare vel lectus a, pulvinar viverra urna. Phasellus eu nulla id ipsum mattis placerat. Sed maximus lobortis ex quis scelerisque. Nam vitae rutrum eros. Pellentesque sodales dui a ornare scelerisque. Nunc viverra risus sit amet rhoncus aliquam.

Morbi molestie, elit quis gravida faucibus, arcu lorem porta arcu, sit amet imperdiet quam mauris in purus. Phasellus orci mauris, varius ac nisi eget, venenatis hendrerit diam. Nullam vitae purus neque. Sed faucibus lacus id mi egestas, vitae tempor nibh feugiat. Donec nibh augue, scelerisque et semper sed, consectetur eget turpis. Proin sagittis, odio vitae rutrum facilisis, enim sem volutpat libero, vitae ultricies dui erat a lacus. Nunc mollis dolor sed dignissim condimentum. Aliquam laoreet velit eros, nec ultricies nulla finibus eget. Mauris ex magna, fermentum at ultricies id, fringilla vitae neque.

Curabitur id tortor in leo dignissim viverra. Vivamus felis diam, bibendum a risus vitae, laoreet interdum magna. Pellentesque pharetra, metus a fringilla ullamcorper, tellus augue varius orci, eu gravida arcu ante eget metus. Cras non blandit velit. Morbi non mattis est. Fusce dapibus diam vel est eleifend facilisis. Integer vel viverra tellus. Suspendisse malesuada neque nec leo varius vestibulum sit amet scelerisque quam. Integer ullamcorper ac felis ornare faucibus. Aliquam lorem nisl, ultrices eget quam id, lacinia porta justo. Fusce magna nibh, volutpat in elit consectetur, ultricies ultrices nibh. Maecenas eu neque id quam pulvinar ullamcorper. Suspendisse posuere venenatis leo, sed vestibulum neque congue vel.

Morbi feugiat porta rutrum. Sed pellentesque risus velit, commodo fringilla sapien ornare et. Phasellus felis odio, accumsan et lobortis id, euismod ac orci. Suspendisse magna elit, volutpat ac dictum a, bibendum vel risus. Morbi pretium, ante in condimentum pretium, nulla neque bibendum tortor, et faucibus risus enim sed libero. Sed venenatis lacus eget nisi ultricies porta. Cras ornare odio congue neque viverra, eu tincidunt nulla volutpat. Sed condimentum, massa volutpat auctor mollis, dui ex varius nibh, vel luctus est mi mattis sapien.

Mauris vel lacus in felis hendrerit malesuada non quis velit. Curabitur eget lacinia eros. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Morbi ac accumsan felis. Mauris et suscipit massa. Integer semper rhoncus massa. Proin hendrerit mauris enim. Duis eleifend neque in lobortis luctus.
""";

class DescriptionPage extends StatelessWidget {
  const DescriptionPage(
      {super.key, required this.title, required this.imagePath});

  final String title;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Image.asset(imagePath),
              Text(
                title,
                style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                ipsumText,
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
