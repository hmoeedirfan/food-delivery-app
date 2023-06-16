import 'package:flutter/material.dart';

PreferredSizeWidget appBar() {
  return AppBar(
    backgroundColor: const Color(0xffF2F2F2),
    elevation: 0,
    centerTitle: true,
    title: const Text(
      'HOME',
      style: TextStyle(
        color: Colors.black,
        letterSpacing: 1,
      ),
    ),
    // Styling Icon
    iconTheme: const IconThemeData(
      color: Colors.black87,
    ),
    // left sided icon
    leading: IconButton(
      onPressed: () {},
      icon: const Icon(
        Icons.menu,
        color: Colors.black87,
      ),
    ),
    // Right sided icon
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.shopping_bag_outlined),
      ),
    ],
  );
}

Widget filterIcon() {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
    decoration: BoxDecoration(
      color: Colors.black,
      borderRadius: BorderRadius.circular(10),
    ),
    child: const Icon(
      Icons.filter_list,
      color: Colors.white,
      size: 25,
    ),
  );
}

Widget searchBar() {
  return Container(
    width: 300,
    margin: const EdgeInsets.only(top: 8),
    padding: const EdgeInsets.symmetric(vertical: 4),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: Colors.white,
    ),
    child: const TextField(
      decoration: InputDecoration(
        hintText: 'Search',
        prefixIcon: Icon(
          Icons.search,
          color: Colors.black87,
        ),
        contentPadding: EdgeInsets.fromLTRB(0, 14, 0, 0),
        border: InputBorder.none,
      ),
    ),
  );
}

Widget bannerAd() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: const Color(0xff4C1204),
      image: const DecorationImage(
        image: AssetImage('assets/images/burger_menu3.jpg'),
      ),
    ),
    width: 360,
  );
}

Widget menuCard(image, name, price) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: Colors.white,
    ),
    child: Column(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ),
          child: Image(
            image: image,
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Row(
                children: const [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 16,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 16,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 16,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 16,
                  ),
                  Icon(
                    Icons.star_outline_outlined,
                    size: 16,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    price,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      letterSpacing: 1,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xffA94E07),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
