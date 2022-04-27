import 'package:flutter/material.dart';

mixin jsonData {
  static final getData = [
    {
      'name': 'Bitcoin',
      'symbol': 'BTC',
      'icon': Icons.currency_bitcoin,
      'change': '+3.67%',
      'iconColor': Colors.blue,
      'changeValue': '+202.835',
      'changeColor': Colors.green,
      'value': '\$12.279',
    },
    {
      'name': 'Ethereum',
      'symbol': 'ETH',
      'icon': Icons.currency_bitcoin,
      'iconColor': '#000',
      'change': '+5.2%',
      'changeValue': '25.567',
      'changeColor': Colors.green,
      'value': '\$7.809'
    },
  ];
}
