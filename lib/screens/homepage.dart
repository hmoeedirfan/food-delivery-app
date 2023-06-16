// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/menu_view.dart';
import 'package:food_delivery_app/utils/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF3F3F3),
      appBar: AppBar(
        title: const Text(
          'HOME',
          style: TextStyle(
            color: Colors.black,
            letterSpacing: 1,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 14),
            child: Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    child: Container(
                      padding: const EdgeInsets.only(top: 2, bottom: 2),
                      decoration: BoxDecoration(
                        color: const Color(0xffFCFCFC),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          border: InputBorder.none,
                          hintText: 'Search',
                          contentPadding: EdgeInsets.only(top: 14),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(
                      Icons.filter_list,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Container(
                // margin: const EdgeInsets.symmetric(horizontal: 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                  image: const DecorationImage(
                    image: AssetImage('assets/images/burger_menu3.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                height: 140,
              ),
              const SizedBox(height: 16),
              GridView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 10,
                  mainAxisExtent: 240,
                ),
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => MenuView()),
                          ),
                        );
                      });
                    },
                    child: menuCard(
                      AssetImage('assets/images/pizza.png'),
                      'Peri Peri Pizza',
                      "\$ 49",
                    ),
                  ),
                  menuCard(
                    AssetImage('assets/images/fried_chicken.png'),
                    'KFC Fried Pizza',
                    "\$ 76",
                  ),
                  menuCard(
                    AssetImage('assets/images/fish1.png'),
                    'Fried Fish',
                    "\$ 66",
                  ),
                  menuCard(
                    AssetImage('assets/images/burger.jpg'),
                    'Chicken Burger',
                    "\$ 19",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        unselectedItemColor: Color(0xff777575),
        selectedItemColor: Color(0xffA94E07),
        iconSize: 30,
        // fixedColor: Color(0xffFF735C),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_active),
            label: '',
          ),
        ],
      ),
    );
  }
}
