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
      body: Column(
        children: [
          SizedBox(height: 20),
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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 320,
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(10),
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
              Icon(Icons.tune)
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
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'May,24, 2022',
                    style: TextStyle(fontSize: 10),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Expanded(
            child: ListView(
              children: [
                TransactionCard(
                  date: 'May 24, 2023',
                  time: '14:45PM',
                  name: 'Emmanuel Rockson Kwabena Uncle Ebo',
                  phoneNumber: '024 123 4567',
                  type: 'Personal',
                  note: 'Cool your heart wai',
                  amount: 'GHS 500',
                  status: 'Successful',
                  image: 'images/mtn.png',
                ),
                TransactionCard(
                  date: 'May 24, 2023',
                  time: '14:45PM',
                  name: 'Absa Bank',
                  phoneNumber: '024 123 4567',
                  type: 'Personal',
                  note: 'Cool your heart wai',
                  amount: 'GHS 500',
                  status: 'Failed',
                  image: 'images/absa.jpeg',
                ),
                TransactionCard(
                  date: 'May 24, 2023',
                  time: '14:45PM',
                  name: 'Emmanuel Rockson ',
                  phoneNumber: '024 123 4567',
                  type: 'other',
                  note: 'Cool your heart wai',
                  amount: 'GHS 500',
                  status: 'Successful',
                  image: 'images/mtn.png',
                ),
                TransactionCard(
                  date: 'May 24, 2023',
                  time: '14:45PM',
                  name: 'Emmanuel Rockson ',
                  phoneNumber: '024 123 4567',
                  type: 'other',
                  note: 'Cool your heart wai',
                  amount: 'GHS 500',
                  status: 'Successful',
                  image: 'images/mtn.png',
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt, color: Colors.black),
            label: 'Send',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.book,
              color: Colors.black,
            ),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month, color: Colors.black),
            label: 'Schedule',
          ),
        ],
      ),
    );
  }
}

class TransactionCard extends StatelessWidget {
  final String date;
  final String time;
  final String name;
  final String phoneNumber;
  final String type;
  final String note;
  final String amount;
  final String status;

  final String image;

  TransactionCard(
      {required this.date,
      required this.time,
      required this.name,
      required this.phoneNumber,
      required this.type,
      required this.note,
      required this.amount,
      required this.status,
      required this.image});

  @override
  Widget build(BuildContext context) {
    Color statusColor = status == 'Successful' ? Colors.green : Colors.red;

    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 22),
            child: Text(time),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(image),
            ),
            title: Text(
              name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(phoneNumber),
            trailing: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: statusColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  child: Text(
                    status,
                    style: TextStyle(color: statusColor),
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  amount,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.lightBlue,
                  child: Icon(Icons.person),
                ),
                Text(type),
                const SizedBox(
                  width: 5,
                ),
                Text(note),
                const Spacer(),
                const Icon(
                  Icons.star,
                  color: Colors.amber,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
