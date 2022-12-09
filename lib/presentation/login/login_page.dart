import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _secureText = true;

  double getKotakKecil(BuildContext context) =>
      MediaQuery.of(context).size.height * 1 / 2;
  double getKotakBesar(BuildContext context) =>
      MediaQuery.of(context).size.height * 2 / 3;
  double getKotakLogo(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;

  @override
  void initState() {
    _secureText = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: Container(
              height: getKotakKecil(context),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xFF008AD1), Color(0xFF1933AC)],
                    begin: Alignment.bottomRight,
                    end: Alignment.topRight),
              ),
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Welcome Back",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: getKotakLogo(context) / 2,
            right: -getKotakLogo(context) / 3,
            child: Container(
              width: getKotakLogo(context),
              height: getKotakLogo(context),
              // color: Colors.green,
              child: Image(
                image: AssetImage("assets/images/persib_logo.png"),
                color: Colors.white.withOpacity(0.1),
              ),
            ),
          ),
          Positioned(
            top: getKotakBesar(context) / 2,
            child: Container(
              height: getKotakBesar(context),
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60),
                  topRight: Radius.circular(60),
                ),
                color: Color(0xFFE0E0E0),
              ),
              padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
              child: Center(
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 3 / 4,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        elevation: 10,
                        child: Column(
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Email or Username",
                                hintStyle: TextStyle(color: Colors.grey[350]),
                                prefixIcon: Icon(
                                  Icons.person,
                                  color: Colors.grey[350],
                                ),
                              ),
                            ),
                            Divider(color: Colors.grey[600]),
                            TextField(
                              obscureText: _secureText,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Password",
                                hintStyle: TextStyle(color: Colors.grey[350]),
                                prefixIcon: Icon(
                                  Icons.vpn_key,
                                  color: Colors.grey[350],
                                ),
                                suffixIcon: InkWell(
                                  onTap: () {
                                    if (_secureText == false)
                                      _secureText = true;
                                    else
                                      _secureText = false;

                                    setState(() {});
                                  },
                                  child: Icon((_secureText == false)
                                      ? Icons.remove_red_eye_outlined
                                      : Icons.visibility_off_outlined),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text("Forgot Password?"),
                    ),
                    SizedBox(height: 10),
                    Material(
                      elevation: 4,
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width / 2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFF008AD1),
                              Color(0xFF1933AC),
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        child: Material(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(20),
                          child: InkWell(
                            splashColor: Color(0xFFE0E0E0),
                            onTap: () {},
                            child: Center(
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 60),
                    Text(
                      "Continue with social media",
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Spacer(flex: 5),
                        FloatingActionButton(
                          onPressed: () {},
                          mini: true,
                          child:
                              Image(image: AssetImage("assets/images/fb.png")),
                        ),
                        Spacer(flex: 1),
                        FloatingActionButton(
                          onPressed: () {},
                          mini: true,
                          child: Image(
                              image: AssetImage("assets/images/twitter.png")),
                        ),
                        Spacer(flex: 1),
                        FloatingActionButton(
                          onPressed: () {},
                          mini: true,
                          child: Image(
                              image: AssetImage("assets/images/google.png")),
                        ),
                        Spacer(flex: 5),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 16,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text("Register here!"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
