import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemView extends StatelessWidget {
  const ItemView(
      {super.key,
      required this.url,
      required this.name,
      required this.price,
      required this.onPressed,
      required this.id});
  final String url;
  final String name;
  final String price;
  final String id;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(offset: const Offset(2, 2), color: Colors.grey.shade200)
            ]),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 100,
            width: double.infinity,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Hero(
                  tag: id,
                  child: Image.network(
                    url,
                    fit: BoxFit.fitWidth,
                  ),
                )),
          ),
          Row(
            children: [
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: GoogleFonts.poppins(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Rs. $price",
                    style: GoogleFonts.poppins(
                        fontSize: 16, color: Colors.black54),
                  ),
                ],
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
