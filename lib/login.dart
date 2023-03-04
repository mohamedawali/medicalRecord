import 'package:flutter/material.dart';

import 'register.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var color1 = const Color(0xffaed2ec);
    var color2 = const Color(0xff3ea4ec);
    var color3 = const Color(0xff5db3ef);

    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.only(top: 40,bottom: 10),
              child: Image.asset('asset/st.png'),),
            height: MediaQuery.of(context).size.height / 2.5,
            decoration: BoxDecoration(
              color: color1,
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            'Sign In',
            style: TextStyle(fontSize: 24, color: color3),
          ),
          const SizedBox(
            height: 50,
          ),
          Form(
              child: Padding(
            padding: const EdgeInsets.only(right: 25, left: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 3, left: 10),
                  child: Text(
                    'Name',
                    style:
                        TextStyle(color: color3, fontWeight: FontWeight.bold),
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Name',
                    contentPadding:
                        EdgeInsets.only(top: 0, bottom: 0, left: 10, right: 10),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: color2, style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(10)),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: color2, style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 3, left: 10),
                  child: Text(
                    "National ID",
                    style:
                        TextStyle(color: color3, fontWeight: FontWeight.bold),
                  ),
                ),
                TextFormField(
                    decoration: InputDecoration(
                        hintText: 'National ID',
                        contentPadding: const EdgeInsets.only(
                            top: 0, bottom: 0, left: 10, right: 10),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: color2, style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(10)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: color2, style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(10))),
                    style: const TextStyle(
                      fontSize: 16,
                    )),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Register()));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: color2,
                      textStyle: const TextStyle(fontSize: 18),
                      minimumSize: Size(MediaQuery.of(context).size.width, 45),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  child: const Text('Sign In'),
                ),
                const SizedBox(
                  height: 30,
                )
              ],
            ),
          )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Don\'t Have Account ?'),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Register()));
                  },
                  child: Text('Sign Up '))
            ],
          )
        ],
      ),
    ));
    ;
  }
}
