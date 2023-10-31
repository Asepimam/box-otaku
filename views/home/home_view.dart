import 'package:box_otaku/src/models/genre/genres.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Genre"),
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        body: SingleChildScrollView(
          controller: ScrollController(),
          child: Column(
            children: [
              FutureBuilder(
                future: ServiceGenreManga().getGenreManga(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  return const CircularProgressIndicator();
                },
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    print("Click");
                  },
                  child: Container(
                    width: double.infinity, // Take up the full available width
                    height: 130,
                    padding: const EdgeInsets.only(top: 50, right: 70),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.topRight,
                        colors: <Color>[
                          Color.fromRGBO(249, 168, 212, 1.0),
                          Color.fromRGBO(216, 180, 254, 1.0),
                          Color.fromRGBO(129, 140, 248, 1.0),
                        ],
                      ),
                    ),
                    child: const Text(
                      "Romance",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    print("Click");
                  },
                  child: Container(
                    width: double.infinity, // Take up the full available width
                    height: 130,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.topRight,
                        colors: <Color>[
                          Color.fromRGBO(165, 180, 252, 1.0),
                          Color.fromRGBO(192, 132, 252, 1.0),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
