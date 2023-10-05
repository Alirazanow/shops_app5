import 'package:flutter/material.dart';
import 'package:shpos_app5/components/shoe_model.dart';
import 'package:shpos_app5/components/shoetitle.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // search box
        Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(color: Colors.grey[100]),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text('Search Bar'), Icon(Icons.search)],
          ),
        ),
        // message
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 25),
          child: Text('Lets Do It What You Want'),
        ),
        // pics

        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Hot Shoes',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                'See All',
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),

        Expanded(
          child: ListView.builder(
            itemCount: 3,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              Shoe shoe = Shoe(
                  description: "Air Jordan",
                  name: 'Nike',
                  price: '25',
                  imagePath: 'images/sh1.jpg');
              return ShoeTitle(
                shoe: shoe,
              );
            },
          ),
        ),
      ],
    );
  }
}
