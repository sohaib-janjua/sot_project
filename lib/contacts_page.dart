import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sot_project/profile_page.dart';

class ContactsPage extends StatelessWidget {
  const ContactsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text("Contacts"),
        actions: const [Icon(Icons.search)],
        centerTitle: true,
      ),
      body: GestureDetector(
        onTap: () {
          Route route = MaterialPageRoute(builder: (xts) {
            return const ProfilePage();
          });
          Navigator.push(context, route);
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              for (int i = 1; i <= 100; i++)
                Row(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: const BoxDecoration(
                          color: Colors.grey, shape: BoxShape.circle),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Text(
                          'Title $i',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          'Subtitle $i',
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        )
                      ],
                    )
                  ],
                )
            ],
          ),
        ),
      ),
    );
  }
}
