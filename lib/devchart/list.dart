import 'package:flutter/material.dart';

List<Map<String, dynamic>> Data = [
  {
    'image': 'assets/m1.png',
    'name': 'Anne',
    'text': 'hey',
    'time': 'Yesterday',
    'on_off': 'online'
  },
  {
    'image': 'assets/c.png',
    'name': 'Steve',
    'text': 'welcome',
    'time': 'Today',
    'on_off': 'online'
  },
  {
    'image': 'assets/d.png',
    'name': 'Denno',
    'text': 'thanks',
    'time': 'Yesterday',
    'on_off': 'online'
  },
  {
    'image': 'assets/e.png',
    'name': 'Anne',
    'text': 'more today',
    'time': 'March 15',
    'on_off': 'online'
  },
  {
    'image': 'assets/f.png',
    'name': 'Robii',
    'text': 'emojii',
    'time': '10:45am',
    'on_off': 'online'
  },
  {
    'image': 'assets/g.png',
    'name': 'Davii',
    'text': '😒😒',
    'time': 'Yesterday',
    'on_off': 'online'
  },
  {
    'image': 'assets/h.png',
    'name': 'Tito',
    'text': '10000',
    'time': 'Today',
    'on_off': ''
  },
  {
    'image': 'assets/i.png',
    'name': 'Miriam',
    'text': '😎😎',
    'time': 'Yesterday',
    'on_off': ''
  },
  {
    'image': 'assets/j.png',
    'name': 'Joy',
    'text': 'ntakam leo',
    'time': 'Yesterday',
    'on_off': ''
  },
  {
    'image': 'assets/k.png',
    'name': 'John',
    'text': 'mfike mapema banaa',
    'time': 'Yesterday',
    'on_off': ''
  },
  {
    'image': 'assets/l.png',
    'name': 'James',
    'text': 'true true',
    'time': 'Yesterday',
    'on_off': ''
  },
  {
    'image': 'assets/m.png',
    'name': 'Mobile Developers KaRU',
    'text': 'Venue DS1',
    'time': '2:59pm',
    'on_off': ''
  },
  {
    'image': 'assets/n.png',
    'name': 'Wambo',
    'text': 'Goodnight',
    'time': 'Today',
    'on_off': ''
  },
  {
    'image': 'assets/m1.png',
    'name': 'Tom',
    'text': 'Success banaa',
    'time': 'Yesterday',
    'on_off': ''
  },
];

List<Map<String, dynamic>> status = [
  {'name': 'Anne', 'time': '31 minutes ago', 'image': 'assets/assets/m1.png'},
  {'name': 'Steve', 'time': '31 minutes ago', 'image': 'assets/c.png'},
  {'name': 'Denno', 'time': '31 minutes ago', 'image': 'assets/d.png'},
  {'name': 'Anne', 'time': '31 minutes ago', 'image': 'assets/e.png'},
  {'name': 'Robii', 'time': '31 minutes ago', 'image': 'assets/f.png'},
  {'name': 'Davii', 'time': '31 minutes ago', 'image': 'assets/g.png'},
  {'name': 'Tito', 'time': '31 minutes ago', 'image': 'assets/h.png'},
  {'name': 'Miriam', 'time': '31 minutes ago', 'image': 'assets/i.png'},
  {'name': 'Joy', 'time': '31 minutes ago', 'image': 'assets/j.png'},
  {'name': 'John', 'time': '31 minutes ago', 'image': 'assets/k.png'},
  {'name': 'James', 'time': '31 minutes ago', 'image': 'assets/l.png'},
  {
    'name': 'Mobile Developers KaRU',
    'time': '31 minutes ago',
    'image': 'assets/m.png'
  },
  {'name': 'Wambo', 'time': '31 minutes ago', 'image': 'assets/n.png'},
  {'name': 'Tom', 'time': '31 minutes ago', 'image': 'assets/m1.png'},
];

List<Map<String, dynamic>> calls = [
  {
    'name': 'Anne',
    'time': Row(
      children: const [
        Icon(
          Icons.call_received_outlined,
          size: 15,
          color: Colors.red,
        ),
        Text('March 3, 17:34')
      ],
    ),
    'icon': Icon(Icons.video_call_rounded),
    'image': 'assets/m1.png'
  },
  {
    'name': 'Steve',
    'time': Row(
      children: const [
        Icon(
          Icons.call_received_outlined,
          size: 15,
          color: Colors.red,
        ),
        Text('March 3, 17:34')
      ],
    ),
    'icon': Icon(Icons.video_call_rounded),
    'image': 'assets/c.png'
  },
  {
    'name': 'Denno',
    'time': Row(
      children: const [
        Icon(
          Icons.call_received_outlined,
          size: 15,
          color: Colors.red,
        ),
        Text('March 3, 17:34')
      ],
    ),
    'icon': Icon(Icons.video_call_rounded),
    'image': 'assets/d.png'
  },
  {
    'name': 'Anne',
    'time': Row(
      children: const [
        Icon(
          Icons.call_received_outlined,
          size: 15,
          color: Colors.red,
        ),
        Text('March 3, 17:34')
      ],
    ),
    'icon': Icon(Icons.video_call_rounded),
    'image': 'assets/g.png'
  },
  {
    'name': 'Davii',
    'time': Row(
      children: const [
        Icon(
          Icons.call_received_outlined,
          size: 15,
          color: Colors.red,
        ),
        Text('March 3, 17:34')
      ],
    ),
    'icon': Icon(Icons.video_call_rounded),
    'image': 'assets/f.png'
  },
  {
    'name': 'Tito',
    'time': Row(
      children: const [
        Icon(
          Icons.call,
          size: 15,
          color: Colors.red,
        ),
        Text('March 3, 17:34')
      ],
    ),
    'icon': Icon(Icons.video_call_rounded),
    'image': 'assets/g.png'
  },
  {
    'name': 'Mirriam',
    'time': Row(
      children: const [
        Icon(
          Icons.call,
          size: 15,
          color: Colors.green,
        ),
        Text('March 3, 17:34')
      ],
    ),
    'icon': Icon(Icons.video_call_rounded),
    'image': 'assets/h.png'
  },
  {
    'name': 'Joy',
    'time': Row(
      children: const [
        Icon(Icons.call_received_outlined, size: 15, color: Colors.green),
        Text('March 3, 17:34')
      ],
    ),
    'icon': Icon(Icons.video_call_rounded),
    'image': 'assets/i.png'
  },
  {
    'name': 'John',
    'time': Row(
      children: const [
        Icon(Icons.call_received_outlined, size: 15, color: Colors.green),
        Text('March 3, 17:34')
      ],
    ),
    'icon': Icon(Icons.video_call_rounded),
    'image': 'assets/j.png'
  },
  {
    'name': 'James',
    'time': Row(
      children: const [
        Icon(Icons.call_received_outlined, size: 15, color: Colors.green),
        Text('March 3, 17:34')
      ],
    ),
    'icon': Icon(Icons.video_call_rounded),
    'image': 'assets/k.png'
  },
  {
    'name': 'Mobile Developers Karu',
    'time': Row(
      children: const [
        Icon(Icons.call_received_outlined, size: 15, color: Colors.green),
        Text('March 3, 17:34')
      ],
    ),
    'icon': Icon(Icons.video_call_rounded),
    'image': 'assets/l.png'
  },
  {
    'name': 'Wambo',
    'time': Row(
      children: const [
        Icon(Icons.call_received_outlined, size: 15, color: Colors.green),
        Text('March 3, 17:34')
      ],
    ),
    'icon': Icon(Icons.video_call_rounded),
    'image': 'assets/m.png'
  },
  {
    'name': 'Tom',
    'time': Row(
      children: const [
        Icon(Icons.call_received_outlined, size: 15, color: Colors.green),
        Text('March 3, 17:34')
      ],
    ),
    'icon': Icon(Icons.video_call_rounded),
    'image': 'assets/n.png'
  },
];
