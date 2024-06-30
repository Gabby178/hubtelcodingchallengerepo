import 'package:flutter/material.dart';

class Hompage extends StatefulWidget {
  const Hompage({super.key});

  @override
  State<Hompage> createState() => _HompageState();
}

class _HompageState extends State<Hompage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(21.0),
            child: Container(
              color: Color.fromARGB(255, 180, 174, 174),
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 200,
                    height: 45,
                    color: Colors.white,
                    child: Center(
                      child: Text(
                        'History',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Text(
                    'Transaction Summary',
                    style: TextStyle(color: Colors.grey[20]),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 300,
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(20),
                color: Color.fromARGB(255, 225, 220, 220),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(
                      width: 20,
                    ),
                    Text('Search')
                  ],
                ),
              ),
              Icon(Icons.category)
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 250),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 225, 220, 220),
                      borderRadius: BorderRadius.circular(10)),
                  height: 30,
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'May,24, 2022',
                    style: TextStyle(fontSize: 10),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Column(children: [
              Text('14:45pm'),
              ListTile(
                leading: CircleAvatar(),
                title: Text('Emmanuel Rockson'),
                subtitle: Text('Kwabena Uncle Ebo'),
                trailing: Text('Successful'),
              ),
              ListTile(
                leading: CircleAvatar(),
                title: Text('Absa Bank'),
                subtitle: Text('0241234567'),
                trailing: Text('failed'),
              ),
              ListTile(
                leading: CircleAvatar(),
                title: Text('Emmanuel Rockson'),
                subtitle: Text('0241234567'),
                trailing: Text('Successful'),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
