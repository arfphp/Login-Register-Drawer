import 'package:flutter/material.dart';
import 'package:pertemuan_5/profile.dart';
import 'package:pertemuan_5/settings.dart';
import 'package:pertemuan_5/main.dart';
import 'package:pertemuan_5/home.dart';

class HalamanUtama extends StatefulWidget {
  //const MyApp({Key? key}) : super(key: key);
  @override
  State<HalamanUtama> createState() => _MyAppState();
}

class _MyAppState extends State<HalamanUtama> {
  int index = 0;
  List<Widget> list = [Home(), Profile(), Settings()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Mari Memasak Bunda"),
          backgroundColor: Color.fromARGB(255, 53, 2, 83),
        ),
        body: list[index],
        drawer: MyDrawer(
          onTap: (ctx, i) {
            setState(() {
              index = i;
              Navigator.pop(ctx);
            });
          },
        ),
      ),
    );
  }
}

class MyDrawer extends StatelessWidget {
  final Function onTap;
  MyDrawer({required this.onTap});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Color.fromARGB(255, 53, 2, 83)),
              child: Padding(
                padding: EdgeInsets.all(6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      width: 60,
                      height: 60,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/img/akbar.jpg'),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Akbar Ramadhani Firdaus",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "E41210766@student.polije.ac.id",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.house),
              title: Text("Home"),
              onTap: () => onTap(context, 0),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              onTap: () => onTap(context, 1),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: () => onTap(context, 2),
            ),
            Divider(
              height: 1,
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Logout"),
              onTap: () => onTap(Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
