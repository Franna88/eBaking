import 'package:flutter/material.dart';

class ContactInfoMobile extends StatelessWidget {
  const ContactInfoMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.45,
      color: const Color.fromARGB(255, 255, 139, 47),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 125,
                  height: 125,
                  child: Image.asset('imges/Logo.png'),
                ),
                const Text(
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
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Connect with us',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontFamily: 'Monser',
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
                const Text(
                  'Follow Us',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Monser',
                    fontSize: 24,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
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
