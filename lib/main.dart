import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Sign In',
            style: TextStyle(fontSize: 48),
          ),
        ),
        backgroundColor: Colors.green,
        toolbarHeight: 200,
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 32.0, top: 48.0, right: 32.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                labelText: 'Username',
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 32.0, top: 16.0, right: 32.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                labelText: 'Password',
              ),
              cursorRadius: Radius.circular(10),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: GestureDetector(
              child: RichText(
                text: const TextSpan(
                  text: 'Forgot ',
                  style: TextStyle(color: Colors.grey),
                  children: [
                    TextSpan(
                      text: 'Username/password?',
                      style: TextStyle(
                        color: Colors.green,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24.0),
            child: ElevatedButton(
              onPressed: () {
                // Xử lý khi người dùng nhấn nút
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, // Màu nền của nút
                padding: const EdgeInsets.symmetric(
                    horizontal: 128, vertical: 16), // Kích thước của nút
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(30)), // Hình dạng của nút
              ),
              child: const Text(
                'SIGN IN',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
