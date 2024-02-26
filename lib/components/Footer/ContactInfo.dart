import 'package:ebaking/Admin/LoginPage/adminloginPage.dart';
import 'package:flutter/material.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 150,
      color: const Color.fromARGB(255, 255, 139, 47),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Material(child: AdminLoginPage())));
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    child: Image.asset('imges/Logo.png'),
                  ),
                ),
                Text(
                  'E-baking',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Monser',
                    fontSize: 24,
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Connect with us',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Monser',
                    fontSize: 22,
                    fontWeight: FontWeight.w200),
              ),
              Text(
                '+271 584 9574',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Monser2',
                  fontSize: 18,
                ),
              ),
              Text(
                'ebake@gmail.com',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Monser2',
                  fontSize: 18,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Follow Us',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Monser',
                    fontSize: 24,
                  ),
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: SizedBox(
                        height: 50,
                        width: 50,
                        child: Image.asset('imges/icons8-facebook-100.png'),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: SizedBox(
                        height: 50,
                        width: 50,
                        child: Image.asset('imges/icons8-insta-100.png'),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
