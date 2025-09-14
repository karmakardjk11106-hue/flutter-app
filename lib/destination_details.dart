// lib/destination_details.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'map_screen.dart';

class DestinationDetails extends StatelessWidget {
  final String name;
  final String image;
  final String city;

  const DestinationDetails({
    super.key,
    required this.name,
    required this.image,
    required this.city,
  });

  Map<String, dynamic> getPlaceDetails(String place) {
    switch (place) {
    // ----------------- Agra -----------------
      case "Taj Mahal":
        return {
          "lat": 27.1751,
          "lng": 78.0421,
          "rating": "4.8",
          "timings": "6 AM – 6 PM",
          "entry": "₹50 (Indians), ₹1100 (Foreigners)",
          "trivia": "The Taj Mahal changes color with sunlight & moonlight.",
          "services": [
            {"icon": Icons.restaurant_outlined, "title": "Shankar Restaurant"},
            {"icon": Icons.local_hospital_outlined, "title": "Agra Hospital"},
            {"icon": Icons.local_police_outlined, "title": "Tourist Police"},
            {"icon": Icons.local_atm_outlined, "title": "SBI ATM"},
          ]
        };
      case "Agra Fort":
        return {
          "lat": 27.1795,
          "lng": 78.0211,
          "rating": "4.6",
          "timings": "6 AM – 6 PM",
          "entry": "₹40 (Indians), ₹550 (Foreigners)",
          "trivia": "Agra Fort was the Mughal residence before Delhi Red Fort.",
          "services": [
            {"icon": Icons.restaurant_outlined, "title": "Mughal Zaika"},
            {"icon": Icons.local_hospital_outlined, "title": "Fort Health Centre"},
            {"icon": Icons.local_police_outlined, "title": "Agra Fort Police"},
            {"icon": Icons.local_atm_outlined, "title": "PNB ATM"},
          ]
        };
      case "Mehtab Bagh":
        return {
          "lat": 27.1800,
          "lng": 78.0419,
          "rating": "4.3",
          "timings": "6 AM – 7 PM",
          "entry": "₹20 (Indians), ₹250 (Foreigners)",
          "trivia": "Garden opposite Taj Mahal for moonlight views.",
          "services": [
            {"icon": Icons.restaurant_outlined, "title": "Garden Cafe"},
            {"icon": Icons.local_hospital_outlined, "title": "Mehtab Clinic"},
            {"icon": Icons.local_police_outlined, "title": "Agra Garden Police"},
            {"icon": Icons.local_atm_outlined, "title": "Axis ATM"},
          ]
        };
      case "Fatehpur Sikri":
        return {
          "lat": 27.0937,
          "lng": 77.6602,
          "rating": "4.5",
          "timings": "6 AM – 6 PM",
          "entry": "₹35 (Indians), ₹550 (Foreigners)",
          "trivia": "A UNESCO heritage city built by Akbar in 1571.",
          "services": [
            {"icon": Icons.restaurant_outlined, "title": "Sikri Dhaba"},
            {"icon": Icons.local_hospital_outlined, "title": "Sikri Health Centre"},
            {"icon": Icons.local_police_outlined, "title": "Fatehpur Police"},
            {"icon": Icons.local_atm_outlined, "title": "ICICI ATM"},
          ]
        };

    // ----------------- Delhi -----------------
      case "India Gate":
        return {
          "lat": 28.6129,
          "lng": 77.2295,
          "rating": "4.7",
          "timings": "Open 24 hours",
          "entry": "Free",
          "trivia": "Memorial dedicated to 84,000 Indian soldiers of WWI.",
          "services": [
            {"icon": Icons.restaurant_outlined, "title": "Delhi Rasoi"},
            {"icon": Icons.local_hospital_outlined, "title": "AIIMS Hospital"},
            {"icon": Icons.local_police_outlined, "title": "Connaught Police"},
            {"icon": Icons.local_atm_outlined, "title": "ICICI ATM"},
          ]
        };
      case "Qutub Minar":
        return {
          "lat": 28.5244,
          "lng": 77.1855,
          "rating": "4.7",
          "timings": "7 AM – 5 PM",
          "entry": "₹40 (Indians), ₹600 (Foreigners)",
          "trivia": "At 73m, it’s the tallest brick minaret in the world.",
          "services": [
            {"icon": Icons.restaurant_outlined, "title": "Delhi Zaika"},
            {"icon": Icons.local_hospital_outlined, "title": "Apollo Hospital"},
            {"icon": Icons.local_police_outlined, "title": "Mehrauli Police"},
            {"icon": Icons.local_atm_outlined, "title": "Axis ATM"},
          ]
        };
      case "Red Fort":
        return {
          "lat": 28.6562,
          "lng": 77.2410,
          "rating": "4.5",
          "timings": "7 AM – 5:30 PM",
          "entry": "₹35 (Indians), ₹500 (Foreigners)",
          "trivia": "PM hoists national flag here every Independence Day.",
          "services": [
            {"icon": Icons.restaurant_outlined, "title": "Lal Qila Cafe"},
            {"icon": Icons.local_hospital_outlined, "title": "Fort Hospital"},
            {"icon": Icons.local_police_outlined, "title": "Delhi Police HQ"},
            {"icon": Icons.local_atm_outlined, "title": "SBI ATM"},
          ]
        };
      case "Lotus Temple":
        return {
          "lat": 28.5535,
          "lng": 77.2588,
          "rating": "4.6",
          "timings": "9 AM – 7 PM",
          "entry": "Free",
          "trivia": "Lotus-shaped temple open to all religions.",
          "services": [
            {"icon": Icons.restaurant_outlined, "title": "Lotus Cafe"},
            {"icon": Icons.local_hospital_outlined, "title": "Nehru Hospital"},
            {"icon": Icons.local_police_outlined, "title": "South Delhi Police"},
            {"icon": Icons.local_atm_outlined, "title": "HDFC ATM"},
          ]
        };

    // ----------------- Jaipur -----------------
      case "Hawa Mahal":
        return {
          "lat": 26.9239,
          "lng": 75.8267,
          "rating": "4.6",
          "timings": "9 AM – 4:30 PM",
          "entry": "₹50 (Indians), ₹200 (Foreigners)",
          "trivia": "Has 953 windows called 'jharokhas' for air flow.",
          "services": [
            {"icon": Icons.restaurant_outlined, "title": "Jaipur Dhaba"},
            {"icon": Icons.local_hospital_outlined, "title": "City Hospital"},
            {"icon": Icons.local_police_outlined, "title": "Pink City Police"},
            {"icon": Icons.local_atm_outlined, "title": "HDFC ATM"},
          ]
        };
      case "Amer Fort":
        return {
          "lat": 26.9855,
          "lng": 75.8513,
          "rating": "4.7",
          "timings": "8 AM – 5:30 PM",
          "entry": "₹100 (Indians), ₹500 (Foreigners)",
          "trivia": "Known for Hindu-style artistic architecture.",
          "services": [
            {"icon": Icons.restaurant_outlined, "title": "Fort View Cafe"},
            {"icon": Icons.local_hospital_outlined, "title": "Amer Hospital"},
            {"icon": Icons.local_police_outlined, "title": "Amber Police"},
            {"icon": Icons.local_atm_outlined, "title": "ICICI ATM"},
          ]
        };
      case "Jal Mahal":
        return {
          "lat": 26.9539,
          "lng": 75.8460,
          "rating": "4.4",
          "timings": "6 AM – 6 PM",
          "entry": "Free (view only)",
          "trivia": "Palace located in the middle of Man Sagar Lake.",
          "services": [
            {"icon": Icons.restaurant_outlined, "title": "Lakeview Dhaba"},
            {"icon": Icons.local_hospital_outlined, "title": "Lake Clinic"},
            {"icon": Icons.local_police_outlined, "title": "Jal Mahal Police"},
            {"icon": Icons.local_atm_outlined, "title": "SBI ATM"},
          ]
        };
      case "City Palace":
        return {
          "lat": 26.9260,
          "lng": 75.8235,
          "rating": "4.5",
          "timings": "9:30 AM – 5 PM",
          "entry": "₹75 (Indians), ₹300 (Foreigners)",
          "trivia": "Blend of Mughal & Rajput architecture.",
          "services": [
            {"icon": Icons.restaurant_outlined, "title": "Palace Cafe"},
            {"icon": Icons.local_hospital_outlined, "title": "Rajputana Hospital"},
            {"icon": Icons.local_police_outlined, "title": "City Palace Police"},
            {"icon": Icons.local_atm_outlined, "title": "Kotak ATM"},
          ]
        };

    // ----------------- Goa -----------------
      case "Baga Beach":
        return {
          "lat": 15.5524,
          "lng": 73.7517,
          "rating": "4.5",
          "timings": "Open 24 hours",
          "entry": "Free",
          "trivia": "Famous for nightlife & water sports.",
          "services": [
            {"icon": Icons.restaurant_outlined, "title": "Baga Shack"},
            {"icon": Icons.local_hospital_outlined, "title": "Goa Health Centre"},
            {"icon": Icons.local_police_outlined, "title": "Coastal Police"},
            {"icon": Icons.local_atm_outlined, "title": "HDFC ATM"},
          ]
        };
      case "Anjuna Beach":
        return {
          "lat": 15.5742,
          "lng": 73.7409,
          "rating": "4.4",
          "timings": "Open 24 hours",
          "entry": "Free",
          "trivia": "Known for trance parties & flea market.",
          "services": [
            {"icon": Icons.restaurant_outlined, "title": "Anjuna Shack"},
            {"icon": Icons.local_hospital_outlined, "title": "Goa Clinic"},
            {"icon": Icons.local_police_outlined, "title": "Beach Police"},
            {"icon": Icons.local_atm_outlined, "title": "Axis ATM"},
          ]
        };
      case "Basilica of Bom Jesus":
        return {
          "lat": 15.5009,
          "lng": 73.9116,
          "rating": "4.6",
          "timings": "9 AM – 6:30 PM",
          "entry": "Free",
          "trivia": "UNESCO church with St. Francis Xavier’s remains.",
          "services": [
            {"icon": Icons.restaurant_outlined, "title": "Old Goa Cafe"},
            {"icon": Icons.local_hospital_outlined, "title": "Mission Hospital"},
            {"icon": Icons.local_police_outlined, "title": "Old Goa Police"},
            {"icon": Icons.local_atm_outlined, "title": "SBI ATM"},
          ]
        };
      case "Dudhsagar Falls":
        return {
          "lat": 15.3146,
          "lng": 74.3143,
          "rating": "4.7",
          "timings": "6 AM – 6 PM",
          "entry": "Free",
          "trivia": "Called ‘Sea of Milk’ waterfalls.",
          "services": [
            {"icon": Icons.restaurant_outlined, "title": "Jungle Shack"},
            {"icon": Icons.local_hospital_outlined, "title": "Forest Health Post"},
            {"icon": Icons.local_police_outlined, "title": "Wildlife Police"},
            {"icon": Icons.local_atm_outlined, "title": "Canara ATM"},
          ]
        };

    // ----------------- Kolkata -----------------
      case "Victoria Memorial":
        return {
          "lat": 22.5448,
          "lng": 88.3426,
          "rating": "4.7",
          "timings": "10 AM – 5 PM",
          "entry": "₹30 (Indians), ₹500 (Foreigners)",
          "trivia": "Built in memory of Queen Victoria.",
          "services": [
            {"icon": Icons.restaurant_outlined, "title": "Kolkata Cafe"},
            {"icon": Icons.local_hospital_outlined, "title": "Victoria Hospital"},
            {"icon": Icons.local_police_outlined, "title": "Maidan Police"},
            {"icon": Icons.local_atm_outlined, "title": "HDFC ATM"},
          ]
        };
      case "Howrah Bridge":
        return {
          "lat": 22.5850,
          "lng": 88.3468,
          "rating": "4.6",
          "timings": "Open 24 hours",
          "entry": "Free",
          "trivia": "Cantilever bridge over the Hooghly River.",
          "services": [
            {"icon": Icons.restaurant_outlined, "title": "Bridge Cafe"},
            {"icon": Icons.local_hospital_outlined, "title": "Howrah Hospital"},
            {"icon": Icons.local_police_outlined, "title": "River Police"},
            {"icon": Icons.local_atm_outlined, "title": "Axis ATM"},
          ]
        };
      case "Dakshineswar Temple":
        return {
          "lat": 22.6558,
          "lng": 88.3577,
          "rating": "4.8",
          "timings": "6 AM – 12 PM, 4 PM – 9 PM",
          "entry": "Free",
          "trivia": "Dedicated to Goddess Kali, visited by Ramakrishna.",
          "services": [
            {"icon": Icons.restaurant_outlined, "title": "Prasad Hall"},
            {"icon": Icons.local_hospital_outlined, "title": "Dakshineswar Health"},
            {"icon": Icons.local_police_outlined, "title": "Temple Police"},
            {"icon": Icons.local_atm_outlined, "title": "SBI ATM"},
          ]
        };
      case "Indian Museum":
        return {
          "lat": 22.5626,
          "lng": 88.3510,
          "rating": "4.5",
          "timings": "10 AM – 5 PM (Closed Mon)",
          "entry": "₹50 (Indians), ₹500 (Foreigners)",
          "trivia": "Oldest & largest museum in India.",
          "services": [
            {"icon": Icons.restaurant_outlined, "title": "Museum Cafe"},
            {"icon": Icons.local_hospital_outlined, "title": "Park Street Clinic"},
            {"icon": Icons.local_police_outlined, "title": "Park Street Police"},
            {"icon": Icons.local_atm_outlined, "title": "ICICI ATM"},
          ]
        };

    // ----------------- Kerala -----------------
      case "Alleppey Backwaters":
        return {
          "lat": 9.4981,
          "lng": 76.3388,
          "rating": "4.7",
          "timings": "Open 24 hours",
          "entry": "Houseboat charges apply",
          "trivia": "Called ‘Venice of the East’.",
          "services": [
            {"icon": Icons.restaurant_outlined, "title": "Backwater Cafe"},
            {"icon": Icons.local_hospital_outlined, "title": "Alleppey Hospital"},
            {"icon": Icons.local_police_outlined, "title": "Water Police"},
            {"icon": Icons.local_atm_outlined, "title": "SBI ATM"},
          ]
        };
      case "Munnar Tea Gardens":
        return {
          "lat": 10.0889,
          "lng": 77.0595,
          "rating": "4.8",
          "timings": "9 AM – 5 PM",
          "entry": "Free (tours extra)",
          "trivia": "Munnar produces world-famous tea.",
          "services": [
            {"icon": Icons.restaurant_outlined, "title": "Tea Garden Cafe"},
            {"icon": Icons.local_hospital_outlined, "title": "Munnar Hospital"},
            {"icon": Icons.local_police_outlined, "title": "Munnar Police"},
            {"icon": Icons.local_atm_outlined, "title": "Federal ATM"},
          ]
        };
      case "Kovalam Beach":
        return {
          "lat": 8.3980,
          "lng": 76.9783,
          "rating": "4.6",
          "timings": "Open 24 hours",
          "entry": "Free",
          "trivia": "Famous for crescent-shaped coastline.",
          "services": [
            {"icon": Icons.restaurant_outlined, "title": "Beach Cafe"},
            {"icon": Icons.local_hospital_outlined, "title": "Kovalam Clinic"},
            {"icon": Icons.local_police_outlined, "title": "Coastal Police"},
            {"icon": Icons.local_atm_outlined, "title": "HDFC ATM"},
          ]
        };
      case "Periyar Wildlife Sanctuary":
        return {
          "lat": 9.4632,
          "lng": 77.2368,
          "rating": "4.7",
          "timings": "6 AM – 6 PM",
          "entry": "₹50 (Indians), ₹500 (Foreigners)",
          "trivia": "Tiger & elephant reserve in Kerala.",
          "services": [
            {"icon": Icons.restaurant_outlined, "title": "Jungle Cafe"},
            {"icon": Icons.local_hospital_outlined, "title": "Forest Health"},
            {"icon": Icons.local_police_outlined, "title": "Wildlife Police"},
            {"icon": Icons.local_atm_outlined, "title": "Canara ATM"},
          ]
        };

    // ---------------- Default ----------------
      default:
        return {
          "lat": 0.0,
          "lng": 0.0,
          "rating": "N/A",
          "timings": "Info not available",
          "entry": "-",
          "trivia": "Details for this location are not yet available.",
          "services": []
        };
    }
  }

  // ... (rest of your DestinationDetails class - the build method, etc.) ...
  // The build method I provided in the previous answer should work fine with this complete data.
  // Make sure the _buildInfoColumn and _buildSectionTitle helper methods are also present.

  @override
  Widget build(BuildContext context) {
    final placeDetails = getPlaceDetails(name);

    final lat = (placeDetails["lat"] as num?)?.toDouble() ?? 0.0;
    final lng = (placeDetails["lng"] as num?)?.toDouble() ?? 0.0;
    final rating = placeDetails["rating"] as String? ?? "N/A";
    final timings = placeDetails["timings"] as String? ?? "Not Available";
    final entry = placeDetails["entry"] as String? ?? "Not Available";
    final trivia = placeDetails["trivia"] as String? ?? "No trivia available.";

    final servicesDynamic = placeDetails["services"] as List<dynamic>? ?? [];
    final services = servicesDynamic
        .map((service) {
      if (service is Map<String, dynamic>) {
        return service;
      }
      return <String, dynamic>{};
    })
        .where((service) => service.isNotEmpty)
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: image,
              child: Image.asset(
                image,
                width: double.infinity,
                height: 280,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    height: 280,
                    color: Colors.grey[300],
                    child: Center(
                      child: Icon(Icons.broken_image_outlined, size: 100, color: Colors.grey[600]),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: GoogleFonts.poppins(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal[800],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    city,
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      color: Colors.grey[700],
                    ),
                  ),
                  const Divider(height: 30, thickness: 1.5),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildInfoColumn(Icons.star_outline_rounded, "Rating", rating),
                      _buildInfoColumn(Icons.watch_later_outlined, "Timings", timings),
                      _buildInfoColumn(Icons.currency_rupee_rounded, "Entry", entry),
                    ],
                  ),
                  const Divider(height: 30, thickness: 1.5),

                  _buildSectionTitle("💡 Trivia"),
                  Text(
                    trivia,
                    style: GoogleFonts.poppins(fontSize: 16, height: 1.5),
                  ),
                  const Divider(height: 30, thickness: 1.5),

                  if (lat != 0.0 || lng != 0.0)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildSectionTitle("🗺️ Location on Map"),
                        ElevatedButton.icon(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (ctx) => MapScreen(
                                  placeName: name,
                                  lat: lat,
                                  lng: lng,
                                ),
                              ),
                            );
                          },
                          icon: const Icon(Icons.map_outlined),
                          label: const Text("View on Map"),
                        ),
                        const Divider(height: 30, thickness: 1.5),
                      ],
                    ),

                  _buildSectionTitle("📍 Nearby Services"),
                  if (services.isNotEmpty)
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 12,
                        mainAxisSpacing: 12,
                        childAspectRatio: 3.2,
                      ),
                      itemCount: services.length,
                      itemBuilder: (ctx, index) {
                        final service = services[index];
                        final iconData = service["icon"] as IconData? ?? Icons.help_outline;
                        final serviceTitle = service["title"] as String? ?? "Unknown Service";
                        return Card(
                          elevation: 2,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Icon(iconData, color: Colors.blueAccent, size: 22),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: Text(
                                    serviceTitle,
                                    style: GoogleFonts.poppins(fontSize: 13.5),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    )
                  else
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        "No nearby services information available.",
                        style: GoogleFonts.poppins(fontSize: 15, fontStyle: FontStyle.italic, color: Colors.grey[600]),
                      ),
                    ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Text(
        title,
        style: GoogleFonts.poppins(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Colors.teal[700],
        ),
      ),
    );
  }

  Widget _buildInfoColumn(IconData icon, String title, String value) {
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: Colors.teal[600], size: 28),
          const SizedBox(height: 6),
          Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: Colors.teal[700],
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 3),
          Text(
            value,
            style: GoogleFonts.poppins(fontSize: 13, color: Colors.grey[800]),
            textAlign: TextAlign.center,
            softWrap: true,
          ),
        ],
      ),
    );
  }
}
