import 'package:dashbook/dashbook.dart';
import 'package:flutter/material.dart';

void main() {
  final dashbook = Dashbook(
    title: 'Getting Started',
  );

  dashbook
    ..storiesOf('Tweets Service')
        .decorator(CenterDecorator())
        .add(
          'Volume Stream',
          (ctx) => const SizedBox(
            width: 300,
            child: Text(''),
          ),
        )
        .add(
          'Filtered Stream',
          (ctx) => const SizedBox(
            width: 300,
            child: Text(''),
          ),
        )
    ..storiesOf('Users Service').decorator(CenterDecorator()).add(
          'default',
          (ctx) => ElevatedButton(
            child: const Text('Ok'),
            onPressed: () {},
          ),
        )
    ..storiesOf('Spaces Service').decorator(CenterDecorator()).add(
          'default',
          (ctx) => ElevatedButton(
            child: const Text('Ok'),
            onPressed: () {},
          ),
        )
    ..storiesOf('Lists Service').decorator(CenterDecorator()).add(
          'default',
          (ctx) => ElevatedButton(
            child: const Text('Ok'),
            onPressed: () {},
          ),
        )
    ..storiesOf('Compliance Service').decorator(CenterDecorator()).add(
          'default',
          (ctx) => ElevatedButton(
            child: const Text('Ok'),
            onPressed: () {},
          ),
        );

  runApp(dashbook);
}
