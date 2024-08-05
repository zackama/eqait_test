import 'package:flutter/material.dart';
import 'package:eqait_test/pages/homepage.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _isPasswordVisible = false;
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
            decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60.0),
          color: Colors.grey[300],
          image: const DecorationImage(
              image: ResizeImage(AssetImage('assets/riyadh_landscape.png'),
                  width: 750, height: 400),
              alignment: Alignment.bottomCenter),
        )),
        Center(
          child: SingleChildScrollView(
            child: Container(
              width: 350,
              height: 445,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "eQAIT",
                          style: TextStyle(fontSize: 45, color: Colors.purple),
                        ),
                        Text(
                          "+",
                          style: TextStyle(fontSize: 50, color: Colors.red),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                     TextField(
                      controller: _usernameController,
                       decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Email/Username",
                        prefixIcon: Padding(
                          padding: EdgeInsets.all(0.0),
                          child: ImageIcon(
                            AssetImage('assets/user.png'),
                            color: Colors.purple,
                            size: 5,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      controller: _passwordController,
                      obscureText: !_isPasswordVisible,
                      decoration: InputDecoration(
                        prefixIcon: const Padding(
                          padding: EdgeInsets.all(0.0),
                          child: ImageIcon(
                            AssetImage('assets/padlock.png'),
                            color: Colors.purple,
                            size: 4,
                          ),
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isPasswordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.purple,
                          ),
                          onPressed: () {
                            setState(() {
                              _isPasswordVisible = !_isPasswordVisible;
                            });
                          },
                        ),
                        border: const OutlineInputBorder(),
                        hintText: "Password",
                      ),
                    ),
                    const SizedBox(
                      width: double.infinity,
                    ),
                    ElevatedButton(
                      style: const ButtonStyle(
                        foregroundColor: WidgetStatePropertyAll(Colors.white),
                        backgroundColor: WidgetStatePropertyAll(Colors.red),
                      ),
                      onPressed: () {
                        print("Username: ${_usernameController.text}");
                        print("Password: ${_passwordController.text}");
                        if (_usernameController.text == "flutter" &&
                            _passwordController.text == "123456") {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SocendPage()),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text('Invalid credentials')),
                          );
                        }
                      },
                      child: const Text("Sign In"),
                    ),
                    const Expanded(child: SizedBox()),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          'assets/nt_logo.png',
                          height: 80,
                          width: 80,
                        ),
                        Text("|"),
                        Image.asset(
                          'assets/stc.png',
                          height: 60,
                          width: 60,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
