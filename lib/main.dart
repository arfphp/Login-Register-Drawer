import 'package:flutter/material.dart';
import 'package:pertemuan_5/halaman_utama.dart';
import 'package:pertemuan_5/register.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primaryColor: Colors.purple),
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              Color.fromARGB(255, 53, 2, 83),
              Color.fromARGB(255, 101, 51, 150),
              Color.fromARGB(255, 225, 183, 233),
            ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Image.asset(
              'assets/img/Logo.jpg',
              height: 100,
              width: 100,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Mari Memasak, Bunda :D',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 400,
              width: 325,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'LOGIN',
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Please Log in first',
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 250,
                    child: TextFormField(
                      controller: usernameController,
                      decoration: InputDecoration(labelText: 'Input Username'),
                    ),
                  ),
                  Container(
                    width: 250,
                    child: TextFormField(
                      obscureText: true,
                      controller: passwordController,
                      decoration: InputDecoration(labelText: 'Input Password'),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    child: MaterialButton(
                      onPressed: () {
                        String uname = usernameController.text;
                        String pass = passwordController.text;
                        if (uname == 'admin' && pass == 'admin123') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HalamanUtama()),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text("Username atau Password Salah")));
                        }
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 250,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            gradient: LinearGradient(colors: [
                              Color.fromARGB(255, 225, 183, 233),
                              Color.fromARGB(255, 101, 51, 150),
                              Color.fromARGB(255, 53, 2, 83),
                            ])),
                        child: Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text(
                            'LOGIN',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 40, 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Dont Have Account ?',
                          style: TextStyle(color: Colors.grey),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Register()),
                              );
                            },
                            child: Text(
                              ' Click Here',
                              style: TextStyle(color: Colors.purpleAccent[700]),
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
