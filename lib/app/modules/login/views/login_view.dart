import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            Image.asset("assets/image/login.png",
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text(
              "Hallo! Feri dan rozy",
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
            Text("Selamat datang di aplikasi resmi"),
            Text("Sistem Informasi Publik Layanan Kesehatan"),
              ],
            ),
            Column(
              children: [
                SizedBox(height: 36),
                Text('Username'),
                TextField(
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(color: Colors.black), // Changed text color
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.all(Radius.circular(70)), // Reduced the radius
                ),
              ),
            ),
            Text('Password'),
            TextField(
              obscureText: true,
              style: TextStyle(color: Colors.black), // Changed text color
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.all(Radius.circular(70)), // Reduced the radius
                ),
              ),
            ),
            SizedBox(height: 20), // Added some spacing
            ElevatedButton(
              onPressed: () {
                // Add your login logic here
              },
              child:Text('Login'),
            ),
              ],
            )
              
          ],
        ),
    );
  }
}