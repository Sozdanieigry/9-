import 'package:flutter/material.dart';
import 'package:flutter_application_15/pages/profil.dart';
import 'package:flutter_application_15/register/register.dart';

String user = '';
List login = [];

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: otvet(),
  ));
}

class otvet extends StatelessWidget {
  const otvet({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text(
          'Личный кабинет',
          style: TextStyle(color: Colors.black),
        ),
        
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: 'Введите логин', border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Введите пароль',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                 
                  fixedSize: Size(125, 50),
                ),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => profil()));
                },
                child: Text(
                  'Войти',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 23,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
             
              TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => register(),
                        ));
                  },
                  child: Text(
                    'Зарегистрироваться',
                    style: TextStyle(color: Colors.black),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
