import 'package:flutter/material.dart';
import 'package:password_strength_checker/password_strength_checker.dart';

class PasswordStrength extends StatefulWidget {
  const PasswordStrength({super.key});
  @override
  State<PasswordStrength> createState() => _PasswordStrengthState();
}

class _PasswordStrengthState extends State<PasswordStrength> {
  late String _password = "**********";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Password Strength"),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(children: [
              IconButton(
                  onPressed: () => setState(() {
                        _password = "567vhgf67vgj";
                      }),
                  icon: Icon(_password == "**********"
                      ? Icons.visibility_off
                      : Icons.visibility)),
              Text(
                _password,
                style: const TextStyle(fontSize: 30),
              ),
              SizedBox(
                width: 400,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 5,
                      width: 230,
                      child: LinearProgressIndicator(
                        value: 0.8,
                        color: Colors.green,
                        backgroundColor: Colors.grey,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 8),
                      width: 70,
                      child: const Text(
                        "good",
                        style: TextStyle(fontSize: 20),
                      ),
                    )
                  ],
                ),
              ),
            ]),
          ]),
    );
  }
}
