import 'package:flutter/material.dart';
import 'models/users_data.dart';
class ContactsScreen extends StatelessWidget {
  List<UsersData> users = [
    UsersData(id: 10, name: 'Omar Mahgoub', phone: '0112858586'),
    UsersData(id: 11, name: 'Mohamed Mahgoub', phone: '012565655465'),
    UsersData(id: 12, name: 'Hossam Mohamed Mahgoub', phone: '0152115151'),
    UsersData(id: 13, name: 'Ahmed Mohamed Mahgoub', phone: '0112154654854'),
    UsersData(id: 14, name: 'Mahgoub mohamed', phone: '01216456152'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          'Contacts',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
        ),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => buildUserItem(users[index]),
        separatorBuilder: (context, index) =>
            Container(
              width: double.infinity,
              height: 1.5,
              color: Colors.grey[300],
            ),
        itemCount: users.length,
      ),
    );
  }
  Widget buildUserItem (UsersData user) => Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: [
        CircleAvatar(
          child: Text('${user.id}',
          style: TextStyle(
            color: Colors.white
          ),
          ),
          radius: 25,
          backgroundColor: Colors.teal,
        ),
        const SizedBox(width: 9.5,),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('${user.name}',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text('${user.phone}',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ],
        )
      ],
    ),
  );


}


