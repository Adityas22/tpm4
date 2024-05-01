import 'package:flutter/material.dart';
import 'package:mobile_layout/login.dart';
import 'package:mobile_layout/navbar/home.dart';

class LogoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Apakah Anda yakin ingin keluar?',
              style: TextStyle(fontSize: 18.0),
            ),
          ),
          ButtonBar(
            children: <Widget>[
              ElevatedButton(
                child: Text('Tidak'),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return Home();
                  }));
                },
              ),
              ElevatedButton(
                child: Text('Ya'),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Login(),
                      ),
                      (route) => false);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
