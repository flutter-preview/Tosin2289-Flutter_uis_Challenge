import 'package:flutter/material.dart';

class day146 extends StatelessWidget {
  day146({Key? key}) : super(key: key);
  final TextStyle headerStyle = TextStyle(
    color: Colors.grey.shade800,
    fontWeight: FontWeight.bold,
    fontSize: 20.0,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          'Settings',
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "ACCOUNT",
              style: headerStyle,
            ),
            const SizedBox(height: 10.0),
            Card(
              elevation: 0.5,
              margin: const EdgeInsets.symmetric(
                vertical: 4.0,
                horizontal: 0,
              ),
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: const CircleAvatar(
                      backgroundImage:
                          AssetImage('images/assets146/Avatar 6.jpg'),
                    ),
                    title: const Text("Damodar Lohani"),
                    onTap: () {},
                  ),
                  _buildDivider(),
                  SwitchListTile(
                    activeColor: Colors.purple,
                    value: true,
                    title: const Text("Private Account"),
                    onChanged: (val) {},
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            Text(
              "PUSH NOTIFICATIONS",
              style: headerStyle,
            ),
            Card(
              margin: const EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 0,
              ),
              child: Column(
                children: <Widget>[
                  SwitchListTile(
                    activeColor: Colors.purple,
                    value: true,
                    title: const Text("Received notification"),
                    onChanged: (val) {},
                  ),
                  _buildDivider(),
                  const SwitchListTile(
                    activeColor: Colors.purple,
                    value: false,
                    title: Text("Received newsletter"),
                    onChanged: null,
                  ),
                  _buildDivider(),
                  SwitchListTile(
                    activeColor: Colors.purple,
                    value: true,
                    title: const Text("Received Offer Notification"),
                    onChanged: (val) {},
                  ),
                  _buildDivider(),
                  const SwitchListTile(
                    activeColor: Colors.purple,
                    value: true,
                    title: Text("Received App Updates"),
                    onChanged: null,
                  ),
                ],
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 0,
              ),
              child: ListTile(
                leading: const Icon(Icons.exit_to_app),
                title: const Text("Logout"),
                onTap: () {},
              ),
            ),
            const SizedBox(height: 60.0),
          ],
        ),
      ),
    );
  }
}

Container _buildDivider() {
  return Container(
    margin: const EdgeInsets.symmetric(
      horizontal: 8.0,
    ),
    width: double.infinity,
    height: 1.0,
    color: Colors.grey.shade300,
  );
}
