import 'package:flutter/material.dart';
import 'package:sqlite/widget/city_widget.dart';

class StackCustomWidget extends StatelessWidget {
  const StackCustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack & Custom Widget', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CityWidget(
                img: 'https://media-cdn.tripadvisor.com/media/photo-s/1a/f1/cb/39/dhaka-is-my-home-town.jpg',
                title: 'Bangladesh',
                rating: '5.0',),
            ),Padding(
              padding: const EdgeInsets.all(8.0),
              child: CityWidget(
                img: 'https://www.visitlondon.com/-/media/images/london/visit/things-to-do/sightseeing/london-itinerary/london-itinerary-lp-shutterstock-1920x1080.jpg?mw=800&rev=dc155c2c0c0e475da02214e5e1a5da38&hash=6667A100485169337ECA2820E1192518',
                title: 'UK',
                rating: '5.0',),
            ),Padding(
              padding: const EdgeInsets.all(8.0),
              child: CityWidget(
                img: 'https://www.axisbank.com/images/default-source/progress-with-us_new/cities-in-america.jpg',
                title: 'US',
                rating: '5.0',),
            ),
          ],
        ),
      ),
    );
  }
}


