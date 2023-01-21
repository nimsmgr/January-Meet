import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:janmeet/model/items.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key, required this.item});
  final Item item;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int cartItem = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 10, left: 15, right: 15),
        child: ElevatedButton(
          onPressed: () {},
          child: const Text("Add to Cart"),
        ),
      ),
      appBar: AppBar(
          backgroundColor: const Color(0xff00cc96),
          title: Text(widget.item.name)),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          height: 300,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Hero(
              tag: widget.item.name,
              child: Image.network(
                widget.item.url,
                fit: BoxFit.cover,
              )),
        ),
        const SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 3),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "  Rs. ${widget.item.price}",
                    style: GoogleFonts.manrope(
                        fontSize: 16, color: Colors.black54),
                  ),
                  Row(
                    children: [
                      Text("Quantity: ${widget.item.count}",
                          style: GoogleFonts.manrope(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ))
                    ],
                  )
                ],
              ),
              const SizedBox(height: 12),
              Text("  ${widget.item.description}",
                  style: GoogleFonts.manrope(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  )),
              const SizedBox(height: 12),
              Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      color: Colors.white,
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 67, 245, 183)),
                      onPressed: () {
                        if (cartItem > 1) {
                          setState(() => cartItem--);
                        }
                      },
                      icon: const Icon(Icons.remove)),
                  const SizedBox(width: 10),
                  Text(
                    "$cartItem",
                    style: GoogleFonts.manrope(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(width: 10),
                  IconButton(
                      color: Colors.white,
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 67, 245, 183)),
                      onPressed: () {
                        if (cartItem < widget.item.count) {
                          setState(() {
                            cartItem++;
                          });
                        }
                      },
                      icon: const Icon(Icons.add)),
                ],
              )
            ],
          ),
        ),
      ]),
    );
  }
}
