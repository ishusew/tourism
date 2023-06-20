import 'package:flutter/material.dart';
import 'package:tourism/src/component/NavBar.dart';
import 'package:tourism/src/dashboard/widget/HomeWidget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Text("Home",
          style: TextStyle(
          color: Colors.black, // Set the title color to black
        ),
      ),
      centerTitle: true, // Center align the title
        iconTheme: IconThemeData(
          color: Colors.black, // Change the color of the menu icon here
        ),
        backgroundColor: Colors.greenAccent, // Set the background color of the app bar
        elevation: 0, // Remove the app bar shadow
      ),
      body: Column(
        children: [
          Text("Points of interest"),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                buildCardWidget(
                  imageUrl: 'assets/images/sri_lanka.jpg',
                  icon: Icons.camera_alt_outlined,
                  text: 'Sri Lanka',
                  onTap: () {
                    // Handle the click event here
                    print('Card clicked!');
                  },                ),
                buildCardWidget(
                  imageUrl: 'assets/images/spot.jpg',
                  icon: Icons.travel_explore,
                  text: 'Tourist spot',
                  onTap: () {
                    // Handle the click event here
                    print('Card clicked!');
                  },
                ),
                buildCardWidget(
                  imageUrl: 'assets/images/station.jpg',
                  icon: Icons.train_outlined,
                  text: 'Stations',
                  onTap: () {
                    // Handle the click event here
                    print('Card clicked!');
                  },
                ),
                buildCardWidget(
                  imageUrl: 'assets/images/restaurant.jpg',
                  icon: Icons.restaurant_outlined,
                  text: 'Restaurant',
                  onTap: () {
                    // Handle the click event here
                    print('Card clicked!');
                  },
                ),
                buildCardWidget(
                  imageUrl: 'assets/images/sri_lanka.jpg',
                  icon: Icons.more_horiz_outlined,
                  text: 'See more',
                  onTap: () {
                    // Handle the click event here
                    print('Card clicked!');
                  },
                ),
              ],
            ),
          ),

           ElevatedButton(
            child: Text("Add Places you found"),
            onPressed: () {
              print('Clicked');
            },
          ),
          Text("Discover"),
          Text("In case of trouble"),
          //sri lanka hotline
          //police station
          //fire stations and ambulance

          Row(
            children: [
              // Text("data"),
              // Text("data"),
              // Text("data"),
            ],
          ),
          Row(
            children: [
              // Text("data"),
              // Text("data"),
              // Text("data"),
            ],
          ),
        ],

      ),
    );
  }
}
