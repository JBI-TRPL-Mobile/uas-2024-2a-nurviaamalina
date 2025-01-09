import 'package:template_project/models/message_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/message_provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final messageProvider = Provider.of<MessageProvider>(context);

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Placeholder untuk gambar
              Container(
                width: 200,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
                child: Center(
                  child: Icon(
                    Icons.image,
                    size: 50,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Teks dari datamessage.json
              Text(
                messageProvider.messages.isNotEmpty
                    ? messageProvider.messages[0].message
                    : "Sudah Punya Akun?",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              // Tombol
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Navigasi ke login screen
                    },
                    child: Text("Login"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Navigasi ke sign-up screen
                    },
                    child: Text("Sign up"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

extension on Message {
  get message => null;
}
