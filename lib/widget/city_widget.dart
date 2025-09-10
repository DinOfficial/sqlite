import 'package:flutter/material.dart';

class CityWidget extends StatelessWidget {
  final String img, title, rating;

  const CityWidget({
    super.key,
    required this.img,
    required this.title,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 300,
          height: 200,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(fit: BoxFit.fill, img),
          ),
        ),
        Positioned(
          top: 80,
          left: 70,
          child: Text(
            title,
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              backgroundColor: Colors.amber,
            ),
          ),
        ),
        Positioned(
          top: 5,
          left: 10,
          child: ElevatedButton (
            onPressed: (){},
            child: Text( rating, style: TextStyle(fontSize: 12, color: Colors.amber),),
          ),
        ),
      ],
    );
  }
}
