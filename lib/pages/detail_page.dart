import 'package:flutter/material.dart';
import 'package:kuis_124240197/model/car.dart';

class DetailPage extends StatelessWidget {
  final Car car;

  const DetailPage({super.key, required this.car});

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      backgroundColor: const Color(0xFFFBF8FD),
      appBar: AppBar
      (
        title: Text
        (
          '${car.brand} ${car.name}',
          style: const TextStyle
          (
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xFF4CAF50),
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0,
      ),
      body: SingleChildScrollView
      (
        child: Column
        (
          crossAxisAlignment: CrossAxisAlignment.start,
          children: 
          [
            Image.network
            (
              car.imageUrl,
              width: double.infinity,
              height: 240,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace)
              {
                return Container
                (
                  width: double.infinity,
                  height: 240,
                  color: Colors.grey[300],
                  child: const Icon
                  (
                    Icons.directions_car,
                    size: 80,
                    color: Colors.grey,
                  ),
                );
              },
            ),
            Padding
            (
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
              child: Column
              (
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                [
                  // Brand + Nama Mobil + Tahun
                  Text
                  (
                    '${car.brand} ${car.name} ${car.year}',
                    style: const TextStyle
                    (
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text
                  (
                    'Rp. ${car.price}',
                    style: const TextStyle
                    (
                      fontSize: 14,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text
                  (
                    car.description,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey.shade800,
                      height: 1.4,
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
