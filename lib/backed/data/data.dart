import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

List<Map<String, dynamic>> transationdata = [
  {
    "icon": FaIcon(FontAwesomeIcons.burger, color: Colors.white),

    "color": Colors.yellow,
    "name": "food",
    "amount": "- ₹10.00",
    "date": "today",
  },
  {
    "icon": FaIcon(FontAwesomeIcons.bagShopping, color: Colors.white),

    "color": Colors.purple,
    "name": "shopping",
    "amount": "- ₹400.00",
    "date": "today",
  },
  {
    "icon": FaIcon(FontAwesomeIcons.heartCircleCheck, color: Colors.white),

    "color": Colors.green,
    "name": "health",
    "amount": "- ₹200.00",
    "date": "yesterday",
  },
  {
    "icon": FaIcon(FontAwesomeIcons.plane, color: Colors.white),

    "color": Colors.blue,
    "name": "Travel",
    "amount": "- ₹500.00",
    "date": "yesterday",
  },
];
