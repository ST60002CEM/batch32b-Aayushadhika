import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Search Items',
            prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none,
            ),
            filled: true,
            contentPadding: EdgeInsets.symmetric(vertical: 0),
            fillColor: Colors.white,
          ),
        ),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'All'),
            Tab(text: 'Chairs'),
            Tab(text: 'Tables'),
            Tab(text: 'Sofa'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          ItemsGridView(),
          ItemsGridView(),
          ItemsGridView(),
          ItemsGridView(),
        ],
      ),
    );
  }
}

class ItemsGridView extends StatelessWidget {
  final List<Map<String, dynamic>> items = [
    {'image': 'assets/images/bigring.png', 'price': '230.00', 'rating': 5},
    {'image': 'assets/images/flower.png', 'price': '230.00', 'rating': 5},
    {'image': 'assets/images/ring.png', 'price': '230.00', 'rating': 5},
    {'image': 'assets/images/necklace.png', 'price': '230.00', 'rating': 5},
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 4,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                  child: Image.asset(
                    items[index]['image'],
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Premium'),
                    Row(
                      children: List.generate(
                          items[index]['rating'],
                          (i) =>
                              Icon(Icons.star, color: Colors.amber, size: 16)),
                    ),
                    SizedBox(height: 4),
                    Text(
                      '\$ ${items[index]['price']}',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
