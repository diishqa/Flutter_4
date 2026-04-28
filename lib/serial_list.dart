import 'package:anime_catalog/serial_card.dart';
import 'package:flutter/material.dart';
import 'package:anime_catalog/serial_list.dart';
import 'package:anime_catalog/models/serial.dart';

class SerialList extends StatelessWidget {
  const SerialList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(12),
      itemCount: serialList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 16),
          child: SerialCard(serial: serialList[index]),
        );
      },
    );
  }
}