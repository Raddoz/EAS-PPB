import 'package:flutter/material.dart';
import 'package:project_pbb/detail.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  int selectedIndex = 0;
  final List<String> categories = ['ALL', 'Coffee', 'Tea', 'Drink'];
  final List<Map<String, dynamic>> products = [
    {
      "name": "Chocolate Frappuccino",
      "price": "IDR 30.000",
      "imageUrl": "assets/chocolate_frappuccino.png",
      "promo": true
    },
    {
      "name": "Tea Frappuccino",
      "price": "IDR 20.000",
      "imageUrl": "assets/tea_frappuccino.png",
      "promo": false
    },
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Row(
              children: [
                Image.asset('images/hamburger.png'),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Starbucks Poin"),
                    Text("100.000"),
                  ],
                ),
                SizedBox(
                  width: 130,
                ),
                Image.asset('images/shop.png'),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Selamat Datang,',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Lorem Ipsum,',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  height: 43,
                  child: TextField(
                    // controller: _controller,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      // // suffixIcon: _controller.text.isNotEmpty
                      //     ? IconButton(
                      //         icon: Icon(Icons.clear),
                      //         onPressed: _clearTextField,
                      //       )
                      //     : null,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  height: 40,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 92,
                        height: 40,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: selectedIndex == index
                                ? Color(0xFF00623B)
                                : Colors.grey[300],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Text(
                            categories[index],
                            style: TextStyle(
                              color: selectedIndex == index
                                  ? Colors.white
                                  : Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Popular'),
                      Text('See All'),
                    ],
                  ),
                ),
                // Text('gio')
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 300,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: categories.length,
                      itemBuilder: (context, index) {
                        return Container(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailProduct(),
                                ),
                              );
                            },
                            child: Image.asset('images/card.png'),
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
