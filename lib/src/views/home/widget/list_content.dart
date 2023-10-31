import 'package:flutter/material.dart';

class ListContent extends StatelessWidget {
  final String namedList;
  final String namedLink;
  const ListContent(
      {Key? key, required this.namedList, required this.namedLink})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              namedList,
              style: const TextStyle(
                fontSize: 19.0,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                namedLink,
                style: const TextStyle(
                  fontSize: 14.0,
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 200,
          child: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.zero,
            clipBehavior: Clip.none,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  width: 120,
                  height: 200,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        8.0,
                      ),
                    ),
                    image: DecorationImage(
                        image: AssetImage("assets/images/jujutsu-kaisen.jpg"),
                        fit: BoxFit.cover),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
