import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:rm_app/models/character.dart';

class DetailScreen extends StatefulWidget {
  final Character character;
  const DetailScreen(this.character, {super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    final Character = widget.character;

    return Scaffold(
      appBar: AppBar(
        title: Text(Character.name),
        centerTitle: true,
      ),
      body: Center(
        child: Card(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CachedNetworkImage(imageUrl: Character.image)
                ],
              ),
              const SizedBox(height: 16,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Status: ${Character.status}", style: const TextStyle(fontSize: 20),),
                  Text("Location: ${Character.locationName}", style: const TextStyle(fontSize: 20),),
                  Text("Gender: ${Character.gender}", style: const TextStyle(fontSize: 20),),
                  Text("Species: ${Character.species}", style: const TextStyle(fontSize: 20),),
                ]
              )
            ],
          )
        ),
      )
      );
  }
}
