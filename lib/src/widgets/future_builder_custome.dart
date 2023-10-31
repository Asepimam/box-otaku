import 'package:flutter/material.dart';

class CustomFutureBuilder<T> extends StatelessWidget {
  final Future<T> future;
  final Widget Function(BuildContext, AsyncSnapshot<T>) builder;
  final Widget Function(BuildContext, AsyncSnapshot<T>)? errorBuilder;
  final Widget Function(BuildContext)? loadingBuilder;

  const CustomFutureBuilder({
    super.key,
    required this.future,
    required this.builder,
    this.errorBuilder,
    this.loadingBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<T>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return loadingBuilder != null
              ? loadingBuilder!(context)
              : const CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return errorBuilder != null
              ? errorBuilder!(context, snapshot)
              : Text('Error: ${snapshot.error}');
        } else {
          return builder(context, snapshot);
        }
      },
    );
  }
}
