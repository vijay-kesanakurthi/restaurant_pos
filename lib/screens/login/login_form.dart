import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(40),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                'Sign In',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'E-mail',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 8),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'example@gmail.com',
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(12))),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Password',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 8),
            TextFormField(
              obscureText: _obscureText,
              cursorHeight: 20,
              decoration: InputDecoration(
                hintText: '@#*%',
                border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                suffixIcon: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
                  decoration: const BoxDecoration(
                      border: Border(
                          left: BorderSide(width: 1, color: Colors.grey))),
                  child: IconButton(
                    icon: Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50),
            Container(
              width: double.infinity,
              height: 48,
              decoration: BoxDecoration(
                color: Colors.red.shade800,
                borderRadius: const BorderRadius.all(Radius.circular(12)),
              ),
              child: TextButton(
                onPressed: () {
                  // Add your sign-in logic here
                },
                child: const Text(
                  'Sign In',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
