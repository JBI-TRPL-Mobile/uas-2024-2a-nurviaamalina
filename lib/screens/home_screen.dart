import 'package:template_project/screens/login_screen.dart';
import 'package:template_project/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/message_provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final messageProvider = Provider.of<MessageProvider>(context);

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 62, 28, 28), 
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
                  border: Border.all(color: const Color.fromARGB(255, 255, 255, 255)), // Warna border
                  borderRadius: BorderRadius.circular(8), // Border melengkung
                ),
                child: Center(
                  child: Image.asset(
                    'assets/images/foto.jpg', // Warna ikon
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
                style: TextStyle(
                  fontSize: 16,
                  color: const Color.fromARGB(255, 255, 255, 255), // Warna teks
                  fontWeight: FontWeight.bold, // Teks tebal
                ),
              ),
              SizedBox(height: 20),

              // Tombol
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignInScreen()),
                      ); // Navigasi ke login screen
                    },
                    child: Text(
                      "Sign in",
                      style: TextStyle(color: const Color.fromRGBO(0, 0, 0, 1)), // Warna teks tombol
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 210, 173, 161), // Warna latar belakang tombol
                      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpScreen()),
                      ); // Navigasi ke sign-up screen
                    },
                    child: Text(
                      "Sign up",
                      style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)), // Warna teks tombol
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 240, 97, 65), // Warna latar belakang tombol
                      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
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
