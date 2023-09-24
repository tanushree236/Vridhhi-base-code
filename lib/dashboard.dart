import 'package:flutter/material.dart';
import 'package:vriddhi_base_code/Decoratives.dart';
import 'package:vriddhi_base_code/FoodAndBeverages.dart';
import 'package:vriddhi_base_code/GridViewdb.dart';
import 'package:vriddhi_base_code/Jwellery.dart';
import 'package:vriddhi_base_code/Others.dart';

class DashboardPage extends StatefulWidget {
  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // Wrap the entire Column with SingleChildScrollView
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: SearchAnchor(
                        // Your existing search bar code
                        builder: (BuildContext context,
                            SearchController controller) {
                          return SearchBar(
                            controller: controller,
                            padding: const MaterialStatePropertyAll<EdgeInsets>(
                                EdgeInsets.symmetric(horizontal: 16.0)),
                            onTap: () {
                              controller.openView();
                            },
                            onChanged: (_) {
                              controller.openView();
                            },
                            leading: const Icon(Icons.search),
                            trailing: <Widget>[
                              IconButton(
                                onPressed: () {
                                  // Add location icon tap logic here
                                  // For example, show a location picker dialog or navigate to a map page
                                },
                                icon: const Icon(Icons.location_on),
                              ),
                            ],
                          );
                        },
                        suggestionsBuilder: (BuildContext context,
                            SearchController controller) {
                          return List<ListTile>.generate(5, (int index) {
                            final String item = 'Location $index';
                            return ListTile(
                              title: Text(item),
                              onTap: () {
                                setState(() {
                                  controller.closeView(item);
                                });
                              },
                            );
                          });
                        },
                      ),
                    ),
                    SizedBox(
                        width: 16.0), // Add spacing between the search bars
                    Expanded(
                      child: SearchAnchor(
                        // Your existing search bar code
                        builder: (BuildContext context,
                            SearchController controller) {
                          return SearchBar(
                            controller: controller,
                            padding: const MaterialStatePropertyAll<EdgeInsets>(
                                EdgeInsets.symmetric(horizontal: 16.0)),
                            onTap: () {
                              controller.openView();
                            },
                            onChanged: (_) {
                              controller.openView();
                            },
                            leading: const Icon(Icons.search),
                          );
                        },
                        suggestionsBuilder: (BuildContext context,
                            SearchController controller) {
                          return List<ListTile>.generate(5, (int index) {
                            final String item = 'Item $index';
                            return ListTile(
                              title: Text(item),
                              onTap: () {
                                setState(() {
                                  controller.closeView(item);
                                });
                              },
                            );
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
                height:
                    16.0), // Add spacing between search bars and images with text
            Container(
              height: 150.0, // Set a fixed height for the container
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  buildImageWithText(
                    'assets/images/fnb.png',
                    'Food and Beverages',
                    () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => FoodAndBeverages()));
                      // Add your logic here for when the image is tapped.
                      // For example, you can navigate to a specific page.
                      // Navigator.of(context).push(MaterialPageRoute(builder: (context) => YourPage()));
                    },
                  ),
                  buildImageWithText(
                    'assets/images/fnb.png',
                    'Decoratives',
                    () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => decoratives()));
                      // Add your logic here for when the image is tapped.
                    },
                  ),
                  buildImageWithText(
                    'assets/images/fnb.png',
                    'Jewellery',
                    () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Jwellery()));
                    },
                  ),
                  buildImageWithText(
                    'assets/images/fnb.png',
                    'Others',
                    () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              others())); // Add your logic here for when the image is tapped.
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              height: 200,
              child: PageView.builder(
                  itemCount: 5,
                  itemBuilder: (context, position) {
                    return _buildPageItem(position);
                  }),
            ),
            SizedBox(height: 16.0),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Best Products ',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'See more+',
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              child: const Padding(
                padding: EdgeInsets.all(24.0),
                child: GridB(),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildPageItem(int index0) {
    return Container(
      height: 200,
      margin: EdgeInsets.only(left: 5, right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: index0.isEven ? Color(0xFF69c5df) : Color(0xFF9294cc),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/food1.jpg"),
        ),
      ),
    );
  }

  Widget buildImageWithText(
      String imagePath, String text, VoidCallback onPressed) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          Image(
            image: AssetImage(imagePath),
            width: 100.0, // Adjust the width as needed
            height: 80.0, // Adjust the height as needed
          ),
          SizedBox(height: 8.0), // Add spacing between image and text
          Text(
            text,
            style: TextStyle(
              fontSize: 16.0, // Adjust the font size as needed
              fontWeight: FontWeight.bold, // Adjust the font weight as needed
            ),
          ),
        ],
      ),
    );
  }
}
