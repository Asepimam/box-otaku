import 'package:box_otaku/src/views/home/widget/list_content.dart';
import 'package:box_otaku/src/widgets/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:box_otaku/core.dart';
import '../controller/home_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  Widget build(context, HomeController controller) {
    controller.view = this;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 170.0,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://images.unsplash.com/photo-1533050487297-09b450131914?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                        ),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 10.0,
                    child: SearchWigets(),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                child: const Column(
                  children: [
                    ListContent(namedList: "New release", namedLink: "See all"),
                    ListContent(namedList: "Populer", namedLink: "See all"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<HomeView> createState() => HomeController();
}
