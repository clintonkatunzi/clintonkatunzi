import 'package:flutter/material.dart';

class HomePagemain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('Smart Genge'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              // Handle cart button tap
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Handle search button tap
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Header Image or Carousel for featured products
            // Replace with your actual image or carousel widget
            Image.asset(
              'assets/background_1.jpg',
              fit: BoxFit.cover,
              height: 200,
            ),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Categories',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 8),
            // Horizontal scrolling list of product categories
            // Replace with your actual categories list
            Container(
              height: 80,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(8),
                    child: CategoryCard(
                      category: categories[index],
                      onTap: () {
                        // Handle category card tap
                      },
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Featured Products',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 8),
            // Grid view of featured products
            // Replace with your actual featured products list
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75, // Adjust the aspect ratio as needed
              ),
              itemCount: featuredProducts.length,
              itemBuilder: (context, index) {
                return ProductCard(
                  product: featuredProducts[index],
                  onTap: () {
                    // Handle product card tap
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String category;
  final Function onTap;

  CategoryCard({required this.category, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        width: 80,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: Colors.orange, width: 4), // Add orange border

        ),
        child: Center(
          child: Text(
            category,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.black, // Category text color

            ),
          ),
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String product;
  final Function onTap;

  ProductCard({required this.product, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
          side: BorderSide(color: Colors.orange, width: 4), // Add deep orange border
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Product image placeholder
            // Replace with your actual product image widget
            Container(
              height: 120,
              color: Colors.grey[300],
            ),
            SizedBox(height: 8),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                product,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87, // Product name text color
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Replace these with your actual categories and featured products
List<String> categories = ['Vegetables', 'Grains', 'Cooking Oil', 'Fruits', 'Spices'];
List<String> featuredProducts = [
  'Banana & disciption',
  'Tomato & discription',
  'Maize Floor 3 & discription',
  'Mango',
  'Chines',
  // 'Product 6',
  // 'Product 7',
  // 'Product 8',
  // 'Product 9',
  // 'Product 10',
  // 'Product 11',
  // 'Product 12',
];
