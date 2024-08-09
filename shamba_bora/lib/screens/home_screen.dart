import 'package:flutter/material.dart';
import '../utils/constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SHAMBA BORA'),
        centerTitle: true,
        backgroundColor: primaryColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Top Products',
                style: headingStyle,
              ),
              Text(
                'Highly recommended farm inputs',
                style: subheadingStyle,
              ),
              SizedBox(height: 10),
              Container(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildProductCard(
                        'Sunflower Seeds', 'assets/images/sunflower_seeds.png'),
                    _buildProductCard(
                        'Fertilizers', 'assets/images/fertilizers.png'),
                    _buildProductCard(
                        'Supplements', 'assets/images/supplements.png'),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Mwirigi Suppliers',
                style: headingStyle,
              ),
              SizedBox(height: 10),
              Image.asset('assets/images/suppliers.png',
                  height: 150, width: double.infinity, fit: BoxFit.cover),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget _buildProductCard(String title, String imagePath) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(imagePath, height: 100, width: 150, fit: BoxFit.cover),
          SizedBox(height: 5),
          Text(
            title,
            style: subheadingStyle,
          ),
        ],
      ),
    );
  }
}
