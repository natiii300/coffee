import 'package:flutter/material.dart';

class Boxes extends StatefulWidget {
  final String coffeeImagePath;
  final String coffeeName;
  final String coffeePrice;

  const Boxes({
    required this.coffeeImagePath,
    required this.coffeeName,
    required this.coffeePrice,
  });

  @override
  State<Boxes> createState() => _BoxesState();
}

class _BoxesState extends State<Boxes> {
  int quancount = 0;

  void decquan() {
    setState(() {
      quancount--;
    });
  }

  void incquan() {
    setState(() {
      quancount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        padding: const EdgeInsets.all(10),
        width: 165,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(widget.coffeeImagePath),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    widget.coffeeName,
                    style: TextStyle(fontSize: 20),
                  ),
                  const Text(
                    'milk,coffee,suger',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('\$ ' + widget.coffeePrice),
                Container(
                  child: IconButton(
                    icon: Icon(
                      Icons.remove,
                      color: const Color.fromARGB(255, 194, 184, 184),
                    ),
                    onPressed: decquan,
                  ),
                ),
                Container(
                  child: IconButton(
                    icon: Icon(
                      Icons.add,
                      color: Color.fromARGB(255, 155, 137, 137),
                    ),
                    onPressed: incquan,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
