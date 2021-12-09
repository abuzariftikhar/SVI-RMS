import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);
  static const String route = "signup";
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  PageController? pageController;

  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    pageController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            physics: const NeverScrollableScrollPhysics(),
            children: const [
              //screen one
              FullNameTile(),
              //screen one
              EmailAddressTile(),
              //Create Password Screen
              PasswordTile(),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40.0),
            child: IconButton(
              onPressed: () {
                pageController!.previousPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOutCirc);
              },
              icon: const Icon(Icons.arrow_back_ios_rounded),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: CupertinoButton.filled(
                      padding: const EdgeInsets.all(16),
                      child: const Text(
                        "Next",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        pageController!.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOutCirc,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FullNameTile extends StatefulWidget {
  const FullNameTile({Key? key}) : super(key: key);

  @override
  _FullNameTileState createState() => _FullNameTileState();
}

class _FullNameTileState extends State<FullNameTile> {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      key: _formkey,
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),

          const Text(
            "New Account",
            style: TextStyle(fontSize: 18),
          ),
          const Text("Start Entering by your\n    First and Last name",
              style: TextStyle(fontSize: 16)),
          const SizedBox(height: 70),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: SizedBox(
              height: 70,
              child: Material(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16.0),
                    topRight: Radius.circular(16.0)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please Provide Your Firstname";
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      hintText: "Your Firstname",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Divider(
              height: 2,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: SizedBox(
              height: 70,
              child: Material(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16.0),
                    bottomRight: Radius.circular(16.0)),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Your Lastname",
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 50),
          Column(
            children: [
              const Text("Already Have An Account?"),
              CupertinoButton(
                  child: const Text("SIGN-IN"),
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ));
                  })
            ],
          ),

          //ElevatedButton(child: Text("Go!"), onPressed: () {})
          const SizedBox(height: 100),
        ],
      ),
    );
  }
}

class EmailAddressTile extends StatefulWidget {
  const EmailAddressTile({Key? key}) : super(key: key);

  @override
  _EmailAddressTileState createState() => _EmailAddressTileState();
}

class _EmailAddressTileState extends State<EmailAddressTile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        const Center(
            child: Text(
          "New Account",
          style: TextStyle(fontSize: 18),
        )),
        const Text("Enter your EmailAddress Below",
            style: TextStyle(fontSize: 16)),
        const SizedBox(height: 90),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: SizedBox(
            height: 70,
            child: Material(
              borderRadius: BorderRadius.circular(16.0),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Your Email Address",
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}

class PasswordTile extends StatefulWidget {
  const PasswordTile({Key? key}) : super(key: key);

  @override
  _PasswordTileState createState() => _PasswordTileState();
}

class _PasswordTileState extends State<PasswordTile> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),

          const Text(
            "Create Your Password",
            style: TextStyle(fontSize: 18),
          ),
          const Text(
            "Your Password has at\nleast one symbol & 8 or\n more characters.",
            textAlign: TextAlign.center,
            style: TextStyle(),
          ),
          const SizedBox(height: 50),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: SizedBox(
              height: 70,
              child: Material(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 8.0,
                  ),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Divider(
              height: 2,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: SizedBox(
              height: 70,
              child: Material(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16.0),
                    bottomRight: Radius.circular(16.0)),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Confirm Password",
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 50),
          Column(
            children: [
              const Text("Already Have An Account?"),
              CupertinoButton(
                child: const Text("SIGN-IN"),
                onPressed: () {
                  Navigator.pushNamed(context, LoginScreen.route);
                },
              )
            ],
          ),

          //ElevatedButton(child: Text("Go!"), onPressed: () {})
          const SizedBox(height: 100),
        ],
      ),
    );
  }
}
