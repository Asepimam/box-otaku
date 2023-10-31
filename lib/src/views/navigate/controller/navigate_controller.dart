import 'package:flutter/material.dart';
import 'package:box_otaku/core.dart';
import '../view/navigate_view.dart';

class NavigateController extends State<NavigateView> {
  static late NavigateController instance;
  late NavigateView view;

  int indexSelected = 0;
  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  final List<Widget> pages = [
    const HomeView(),
    const ExploreView(),
  ];

  void setIndex(int index) {
    setState(() {
      indexSelected = index;
    });
  }
}
