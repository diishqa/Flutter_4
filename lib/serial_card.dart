import 'package:flutter/material.dart';
import 'package:anime_catalog/models/serial.dart';

class SerialCard extends StatelessWidget {
  final Serial serial;

  const SerialCard({super.key, required this.serial});

  void _showDetails(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('${serial.title} (${serial.year}) - Рейтинг: ${serial.rating}'),
        duration: Duration(seconds: 2),
      ),
    );
  }

  Widget _buildPoster() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.asset(
        serial.imagePath,
        width: 100,
        height: 140,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildTitleRow() {
    return Row(
      children: [
        Expanded(
          child: Text(
            serial.title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Text(
          '${serial.year}',
          style: TextStyle(fontSize: 14, color: Colors.grey[600]),
        ),
      ],
    );
  }

  Widget _buildGenre() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.deepPurple[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        serial.genre,
        style: TextStyle(fontSize: 12, color: Colors.deepPurple[800]),
      ),
    );
  }

  Widget _buildRating() {
    return Row(
      children: [
        Icon(Icons.star, size: 18, color: Colors.amber),
        SizedBox(width: 4),
        Text(
          serial.rating.toString(),
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }

  Widget _buildDescription() {
    return Text(
      serial.description,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(fontSize: 13, color: Colors.grey[700]),
    );
  }

  Widget _buildInfo() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTitleRow(),
          SizedBox(height: 6),
          Row(
            children: [
              _buildGenre(),
              SizedBox(width: 8),
              _buildRating(),
            ],
          ),
          SizedBox(height: 8),
          _buildDescription(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        onTap: () => _showDetails(context),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildPoster(),
            Expanded(child: _buildInfo()),
          ],
        ),
      ),
    );
  }
}