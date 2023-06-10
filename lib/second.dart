import 'package:flutter/material.dart';

class Selectionpage extends StatefulWidget {
  Selectionpage({Key? key}) : super(key: key);

  @override
  _SelectionpageState createState() => _SelectionpageState();
}

class _SelectionpageState extends State<Selectionpage> {
  String? valueChoose;
  List<String> listItem = ['Physics', 'Chemistry'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basic Page'),
        backgroundColor: Colors.blue.shade700,
      ),
      drawer: const NavigationDrawer(),
      body: Center(
        child: DropdownButton<String>(
          hint: Text("Select Items:"),
          value: valueChoose,
          onChanged: (newValue) {
            setState(() {
              valueChoose = newValue!;
            });
          },
          items: listItem.map((valueItem) {
            return DropdownMenuItem<String>(
              value: valueItem,
              child: Text(valueItem),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildHeader(context),
            buildMenuItems(context),
          ],
        ),
      ),
    );
  }

  Widget buildHeader(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
      ),
      // Add header content here
    );
  }

  Widget buildMenuItems(BuildContext context) {
    return Container(
      child: [
        ListTile(
          leading: const Icon(Icons.home_outlined),
          title: const Text('Home'),
          onTap: () {},
        ),
      ],
    );
  }
}
