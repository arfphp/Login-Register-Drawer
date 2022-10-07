import 'package:flutter/material.dart';
import 'package:pertemuan_5/main.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                    'REGISTER',
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 250,
                    child: TextFormField(
                      decoration: InputDecoration(labelText: 'Input Email'),
                    ),
                  ),
                  Container(
                    width: 250,
                    child: TextFormField(
                      decoration: InputDecoration(labelText: 'Input Username'),
                    ),
                  ),
                  Container(
                    width: 250,
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(labelText: 'Input Password'),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
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
                            'SIGN UP',
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
                          'Already Have Account ?',
                          style: TextStyle(color: Colors.grey),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()),
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
