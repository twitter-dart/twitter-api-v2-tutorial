import 'package:dashbook/dashbook.dart';
import 'package:flutter/material.dart';

void main() {
  final dashbook = Dashbook(
    title: 'Tutorial for twitter_api_v2',
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
        )
    ..storiesOf('Using Expansions').decorator(CenterDecorator()).add(
          'default',
          (ctx) => ElevatedButton(
            child: const Text('Ok'),
            onPressed: () {},
          ),
        )
    ..storiesOf('Using Fields').decorator(CenterDecorator()).add(
          'default',
          (ctx) => ElevatedButton(
            child: const Text('Ok'),
            onPressed: () {},
          ),
        )
    ..storiesOf('Stream with Flutter').decorator(CenterDecorator()).add(
          'default',
          (ctx) => ElevatedButton(
            child: const Text('Ok'),
            onPressed: () {},
          ),
        )
    ..storiesOf('Tips').decorator(CenterDecorator()).add(
          'default',
          (ctx) => ElevatedButton(
            child: const Text('Ok'),
            onPressed: () {},
          ),
        );

  runApp(dashbook);
}
