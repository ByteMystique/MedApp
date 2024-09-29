import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Background image
          Positioned(
            top: 120,
            left: 0,
            right: 0,
            child: Image.asset(
              'lib/assets/images/wp.jpeg',
              height: MediaQuery.of(context).size.height * 0.4, 
              fit: BoxFit.cover, 
            ),
           ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.25),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.phone, color: Colors.blue),
                    labelText: 'Phone Number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  keyboardType: TextInputType.phone, 
                  maxLength: 10, 
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly, 
                  ],
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Add login logic here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    minimumSize: Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    'LOGIN',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: CustomLoginPage()));
}
