import 'package:flutter/material.dart';
import 'package:kuis_124240197/data/car_data.dart';
import 'package:kuis_124240197/model/car.dart';
import 'package:kuis_124240197/pages/detail_page.dart';

class BerandaPage extends StatelessWidget 
{
  final String username;

  const BerandaPage({super.key, required this.username});

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
          'Halo, $username',
          style: const TextStyle
          (
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xFF4CAF50),
        elevation: 0,
      ),
      body: ListView.builder
      (
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
        itemCount: cars.length,
        itemBuilder: (context, index)
        {
          final Car car = cars[index];
          return Card
          (
            elevation: 1.5,
            shadowColor: Colors.black12,
            shape: RoundedRectangleBorder
            (
              borderRadius: BorderRadius.circular(10),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 5),
            color: Colors.white,
            child: ListTile
            (
              contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              leading: ClipRRect
              (
                borderRadius: BorderRadius.circular(6),
                child: Image.network
                (
                  car.imageUrl,
                  width: 65,
                  height: 55,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace)
                  {
                    return Container
                    (
                      width: 65,
                      height: 55,
                      color: Colors.grey[200],
                      child: const Icon(Icons.directions_car, color: Colors.grey),
                    );
                  },
                ),
              ),
              title: Text
              (
                '${car.brand} ${car.name}',
                style: const TextStyle
                (
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.black87,
                ),
              ),
              subtitle: Text
              (
                '${car.year}',
                style: TextStyle
                (
                  fontSize: 13,
                  color: Colors.grey.shade600,
                ),
              ),
              trailing: const Icon
              (
                Icons.chevron_right,
                color: Colors.grey,
              ),
              onTap: () 
              {
                Navigator.push
                (
                  context,
                  MaterialPageRoute
                  (
                    builder: (context) => DetailPage(car: car),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
