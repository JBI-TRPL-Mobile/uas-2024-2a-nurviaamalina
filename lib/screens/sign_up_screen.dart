import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 62, 28, 28), // Latar belakang halaman
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Title
            const Text(
              "Sign Up",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 252, 252, 252), // Warna teks judul
              ),
            ),
            const SizedBox(height: 8),

            // Subtitle
            const Text(
              "Create a new account to get started",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Color.fromARGB(255, 207, 206, 206),
              ),
            ),
            const SizedBox(height: 32),
            // Name Field
            TextField(
              decoration: InputDecoration(
                labelText: "Enter Name",
                labelStyle: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
                prefixIcon: const Icon(Icons.person, color: Color.fromARGB(255, 248, 248, 248)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(color: const Color.fromARGB(255, 255, 255, 255)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(color: const Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
            ),
            const SizedBox(height: 16),
           
            TextField(
              decoration: InputDecoration(
                labelText: "Enter Email",
                labelStyle: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
                prefixIcon: const Icon(Icons.email, color: Color.fromARGB(255, 255, 255, 255)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(color: const Color.fromARGB(255, 255, 255, 255)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(color: const Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
            ),
            const SizedBox(height: 16),
            
            // Password Field
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                labelStyle: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
                prefixIcon: const Icon(Icons.lock, color: Color.fromARGB(255, 255, 255, 255)),
                suffixIcon: const Icon(Icons.visibility_off, color: Color.fromARGB(255, 255, 255, 255)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(color: const Color.fromARGB(255, 255, 255, 255)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(color: const Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
            ),
            const SizedBox(height: 16),
            // Confirm Password Field
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Confirm Password",
                labelStyle: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
                prefixIcon: const Icon(Icons.lock, color: Color.fromARGB(255, 255, 255, 255)),
                suffixIcon: const Icon(Icons.visibility_off, color: Color.fromARGB(255, 255, 255, 255)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(color: const Color.fromARGB(255, 255, 255, 255)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(color: const Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
            ),
            const SizedBox(height: 8),

            // Sign Up Button
            ElevatedButton(
              onPressed: () {
                // Handle sign-up action
              },
              child: const Text("Sign Up"),
              style: ElevatedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 0, 0, 0), backgroundColor: const Color.fromARGB(255, 210, 173, 161), padding: const EdgeInsets.symmetric(vertical: 12), // Warna teks tombol
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Divider for Social Login
            Row(
              children: const [
                Expanded(child: Divider(thickness: 1)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text("or sign up with"),
                ),
                Expanded(child: Divider(thickness: 1)),
              ],
            ),
            const SizedBox(height: 16),

            // Social Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    // Handle Google sign-up
                  },
                  icon: const Icon(Icons.g_mobiledata, color: Colors.red),
                  iconSize: 36,
                ),
                const SizedBox(width: 16),
                IconButton(
                  onPressed: () {
                    // Handle Facebook sign-up
                  },
                  icon: const Icon(Icons.facebook, color: Color.fromARGB(255, 56, 131, 193)),
                  iconSize: 36,
                ),
              ],
            ),
            const SizedBox(height: 32),

            // Sign In Option
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account?"),
                TextButton(
                  onPressed: () {
                    // Navigate to Sign In screen
                  },
                  child: const Text(
                    "Sign In Now",
                    style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
