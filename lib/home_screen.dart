import 'package:flutter/material.dart';
import 'destination_details.dart'; // Import DestinationDetails

// Dummy data for destinations
final List<Map<String, String>> sampleDestinations = [
  {
    "name": "Taj Mahal",
    "city": "Agra",
    "image": "assets/images/tajmahal.jpg" // Ensure this image exists
  },
  {
    "name": "India Gate",
    "city": "Delhi",
    "image": "assets/images/indiagate.jpg" // Ensure this image exists
  },
  {
    "name": "Hawa Mahal",
    "city": "Jaipur",
    "image": "assets/images/hawamahal.jpg" // Ensure this image exists
  },
  // Add more destinations if you have images for them
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TrailTale Destinations'),
      ),
      body: ListView.builder(
        itemCount: sampleDestinations.length,
        itemBuilder: (context, index) {
          final destination = sampleDestinations[index];
          return Card(
            margin: const EdgeInsets.all(10.0),
            elevation: 4,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => DestinationDetails(
                      name: destination['name']!,
                      image: destination['image']!,
                      city: destination['city']!,
                    ),
                  ),
                );
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    child: AspectRatio(
                      aspectRatio: 16 / 9,
                      child: Image.asset(
                        destination['image']!,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            color: Colors.grey[300],
                            child: Center(
                              child: Icon(Icons.broken_image, size: 50, color: Colors.grey[600]),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          destination['name']!,
                          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.teal[800]
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          destination['city']!,
                          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              color: Colors.grey[700]
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
