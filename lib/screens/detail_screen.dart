import 'package:flutter/material.dart';
import '../models/plant.dart';

class DetailScreen extends StatefulWidget {
  final Plant plant;
  const DetailScreen({super.key, required this.plant});
  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool _fav = false;

  Widget _info(IconData icon, String text) => Column(
        children: [
          Icon(icon, size: 30, color: Colors.green.shade700),
          const SizedBox(height: 4),
          Text(text),
        ],
      );

  @override
  Widget build(BuildContext context) {
    final p = widget.plant;
    return Scaffold(
      appBar: AppBar(title: Text(p.name)),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: p.name,
              child: Image.network(p.image,
                  width: double.infinity, height: 280, fit: BoxFit.cover),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(p.name,
                      style: const TextStyle(
                          fontSize: 28, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _info(Icons.star, '${p.rating}'),
                      _info(Icons.attach_money, '${p.price.toStringAsFixed(0)} MXN'),
                      _info(Icons.water_drop, p.care),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text('Descripción',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  Text(p.details, style: const TextStyle(fontSize: 16)),
                  const SizedBox(height: 24),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: () => setState(() => _fav = !_fav),
                      icon: Icon(_fav ? Icons.favorite : Icons.favorite_border),
                      label: Text(_fav ? 'En favoritos' : 'Agregar a favoritos'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}