import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 62, 28, 28), // Warna latar belakang halaman
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Title
            const Text(
              "Sign In",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255), // Warna teks judul
              ),
            ),
            const SizedBox(height: 8),

            // Subtitle
            const Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Color.fromARGB(255, 216, 214, 214),
              ),
            ),
            const SizedBox(height: 32),
           
            // Email Field
            TextField(
              decoration: InputDecoration(
                labelText: "Enter Email",
                labelStyle: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)), // Warna label
                prefixIcon: const Icon(Icons.email, color: Color.fromARGB(255, 255, 255, 255)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(color: const Color.fromARGB(255, 245, 250, 255)), // Warna border
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(color: const Color.fromARGB(255, 255, 255, 255)), // Warna border saat focus
                ),
              ),
            ),
            const SizedBox(height: 16),
            // Password Field
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                labelStyle: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)), // Warna label
                prefixIcon: const Icon(Icons.lock, color: Color.fromARGB(255, 255, 255, 255)),
                suffixIcon: const Icon(Icons.visibility_off, color: Color.fromARGB(255, 255, 255, 255)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(color: const Color.fromARGB(255, 255, 255, 255)), // Warna border
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(color: const Color.fromARGB(255, 255, 255, 255)), // Warna border saat focus
                ),
              ),
            ),
            const SizedBox(height: 8),

            // Forget Password
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    // Handle forget password action
                  },
                  child: const Text(
                    "Forget Password?",
                    style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)), // Warna teks tombol
                  ),
                ),
              ],
            ),

            // Sign In Button
            ElevatedButton(
              onPressed: () {
                // Handle sign-in action
              },
              child: const Text("Sign In"),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 12),
                backgroundColor: const Color.fromARGB(255, 210, 173, 161),  // Warna latar belakang tombol
                foregroundColor: const Color.fromARGB(255, 3, 3, 3),  // Warna teks tombol
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
                  child: Text("or sign in with"),
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
                    // Handle Google sign-in
                  },
                  icon: const Icon(Icons.g_mobiledata, color: Colors.red),
                  iconSize: 36,
                ),
                const SizedBox(width: 16),
                IconButton(
                  onPressed: () {
                    // Handle Facebook sign-in
                  },
                  icon: const Icon(Icons.facebook, color: Colors.blue),
                  iconSize: 36,
                ),
              ],
            ),
            const SizedBox(height: 32),

            // Sign Up Option
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?"),
                TextButton(
                  onPressed: () {
                    // Navigate to Sign Up screen
                  },
                  child: const Text(
                    "Sign Up Now",
                    style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)), // Warna teks tombol
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
