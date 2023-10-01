import 'package:flutter/material.dart';
import 'package:forg/boxs.dart';
import 'package:forg/coffe_type.dart';
import 'package:forg/firstpage.dart';
import 'package:forg/main_page.dart';
import 'package:google_fonts/google_fonts.dart';

class Homep extends StatefulWidget {
  const Homep({super.key});

  @override
  State<Homep> createState() => _HomepState();
}

class _HomepState extends State<Homep> {
  final List coffeeType = [
    [
      'capacino',
      true,
    ],
    [
      'coffee',
      false,
    ],
    [
      'late',
      false,
    ],
    [
      'milk',
      false,
    ],
  ];

  void coffeeTypeSelected(int index) {
    setState(() {
      for (int i = 0; i < coffeeType.length; i++) {
        coffeeType[i][1] = false;
      }
      coffeeType[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 34, 15, 2),
      ),
      drawer: SafeArea(
        child: Drawer(
          child: Column(
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 88, 88, 88),
                ),
                child: ListTile(
                  title: Text(
                    'Caffeine & sugar the two basic food groups.',
                    style: TextStyle(
                      color: Color.fromARGB(255, 243, 238, 238),
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.settings),
                title: const Text('setting'),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const First();
                      },
                    ),
                  );
                },
                leading: const Icon(Icons.logout),
                title: const Text('log out'),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 162, 132, 117),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 34, 15, 2),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/image/pic15.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Container(
                height: 150,
                width: 150,
                child: Image.asset('lib/image/pic18.png')),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'search here ...',
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 188, 188, 180),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 236, 220, 220)),
                  ),
                ),
              ),
            ),
            SizedBox(height: 5),
            Container(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: coffeeType.length,
                itemBuilder: (context, index) {
                  return CoffeeType(
                    coffeeType: coffeeType[index][0],
                    isSelected: coffeeType[index][1],
                    onTap: () {
                      coffeeTypeSelected(index);
                    },
                  );
                },
              ),
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Boxes(
                    coffeeImagePath: 'lib/image/pic5.webp',
                    coffeeName: 'makiato',
                    coffeePrice: '15.00',
                  ),
                  Boxes(
                    coffeeImagePath: 'lib/image/pic3.webp',
                    coffeeName: 'coffee',
                    coffeePrice: '10.00',
                  ),
                  Boxes(
                    coffeeImagePath: 'lib/image/pic6.jpg',
                    coffeeName: 'late',
                    coffeePrice: '20.00',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
