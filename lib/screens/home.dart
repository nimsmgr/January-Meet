import 'package:flutter/material.dart';
import 'package:janmeet/components/item_view.dart';
import 'package:janmeet/model/items.dart';
import 'package:janmeet/screens/detail_page.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff00cc96),
        title: const Text("Nepali Handicrafts"),
        centerTitle: true,
        actions: const [],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
            itemCount: all.length,
            itemBuilder: (context, i) {
              return ItemView(
                  id: all[i].name,
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DetailPage(item: all[i])));
                  },
                  url: all[i].url,
                  name: all[i].name,
                  price: "${all[i].price}");
            }),
      ),
    );
  }
}
