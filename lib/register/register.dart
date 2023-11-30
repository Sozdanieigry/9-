import 'package:flutter/material.dart';
import 'package:flutter_application_15/main.dart';

class register extends StatelessWidget {
  register({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Регестрация',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Введите Имя', border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Введите Фамилию',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Придумайте логин', border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Придумайте пароль',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(),
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => otvet(),
                      ));
                },
                child: Text('Зарегистрироваться', style: TextStyle(fontSize: 18, color: Colors.black),)),
                
          ],
        ),
      ),
    );
  }
}
