import 'package:ebaking/Admin/LoginPage/ui/textFieldLogin.dart';
import 'package:ebaking/Admin/NavigationPage/navigationPage.dart';
import 'package:ebaking/components/MyUtil.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  // text editing controllers
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: const Color.fromARGB(255, 255, 223, 196),
        width: 450,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Row(
              children: [
                Text(
                  "Please ",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 14, 25, 77),
                    fontFamily: "RegularMontserratBold",
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Login ",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 225, 112, 93),
                    fontFamily: "RegularMontserratBold",
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "to Continue ",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 14, 25, 77),
                    fontFamily: "RegularMontserratBold",
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextFieldLogin(
                description: "Email",
                hintText: "Enter Your Email*",
                controller: emailController,
                textColor: const Color.fromARGB(255, 14, 25, 77),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextFieldLogin(
                description: "Password",
                hintText: "Enter Your Password*",
                controller: passwordController,
                textColor: const Color.fromARGB(255, 249, 119, 15),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const Material(child: NavigationPAge())));
              },
              child: Container(
                  width: 200,
                  height: 100,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("imges/buttonStyle.png"),
                        fit: BoxFit.contain),
                  ),
                  child: const Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: "RegularMontserratBold",
                      ),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

class AdminLoginPage extends StatelessWidget {
  const AdminLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: MyUtility(context).width,
          height: MyUtility(context).height,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("imges/orangeBackground.png"),
                fit: BoxFit.cover),
          ),
        ),
        Container(
          width: MyUtility(context).width / 2,
          height: MyUtility(context).height / 2,
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 255, 223, 196),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: const Center(child: LoginForm()),
        ),
        Positioned(
          bottom: MyUtility(context).height / 1.6,
          left: MyUtility(context).width / 4.5,
          child: Container(
            width: MyUtility(context).width / 12,
            height: MyUtility(context).height / 6,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("imges/Logo.png"), fit: BoxFit.cover),
            ),
          ),
        ),
      ],
    );
  }
}
