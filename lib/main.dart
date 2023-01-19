import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(children: [
            const Center(
              child: Text(
                'STAFF ID CARD',
                style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 30),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const CircleAvatar(
              backgroundColor: Colors.white,
              radius: 50,
              backgroundImage: AssetImage('images/man.jpg'),
            ),
            const SizedBox(
              height: 50,
            ),
            buildUserInfoContainer('Name', 'Femi Emmanuel'),
            buildUserInfoContainer('Position', 'Gateman'),
            buildUserInfoContainer('Gender', 'Non-Binary'),
            buildUserInfoContainer('Genotype', 'AA'),
            buildUserInfoContainer('PhoneNumber', '+2347038709484'),
            // Container(
            //   width: double.infinity,
            //   height: 70,
            //   margin: EdgeInsets.only(right: 15, left: 15, bottom: 20),
            //   padding: EdgeInsets.only(left: 15, right: 15),
            //   decoration: BoxDecoration(
            //       color: Colors.white,
            //       borderRadius: BorderRadius.all(Radius.circular(20))),
            //   child: Row(
            //       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         Text(
            //           'Position:',
            //           style:
            //               TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            //         ),
            //         SizedBox(
            //           width: 15,
            //         ),
            //         Text(
            //           'Chief Accountant',
            //           style:
            //               TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            //         )
            //       ]),
            // ),
            // Container(
            //   width: double.infinity,
            //   height: 70,
            //   margin: EdgeInsets.only(right: 15, left: 15, bottom: 20),
            //   padding: EdgeInsets.only(left: 15, right: 15),
            //   decoration: BoxDecoration(
            //       color: Colors.white,
            //       borderRadius: BorderRadius.all(Radius.circular(20))),
            //   child: Row(
            //       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         Text(
            //           'Genotype:',
            //           style:
            //               TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            //         ),
            //         SizedBox(
            //           width: 15,
            //         ),
            //         Text(
            //           'B+',
            //           style:
            //               TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            //         )
            //       ]),
            // ),
            // Container(
            //   width: double.infinity,
            //   height: 70,
            //   margin: EdgeInsets.only(right: 15, left: 15, bottom: 20),
            //   padding: EdgeInsets.only(left: 15, right: 15),
            //   decoration: BoxDecoration(
            //       color: Colors.white,
            //       borderRadius: BorderRadius.all(Radius.circular(20))),
            //   child: Row(
            //       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         Text(
            //           'Phone Number:',
            //           style:
            //               TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            //         ),
            //         SizedBox(
            //           width: 15,
            //         ),
            //         Text(
            //           '+2347038709484',
            //           style:
            //               TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            //         )
            //       ]),
            // ),
            // Container(
            //   width: double.infinity,
            //   height: 70,
            //   margin: EdgeInsets.only(right: 15, left: 15, bottom: 20),
            //   padding: EdgeInsets.only(left: 15, right: 15),
            //   decoration: BoxDecoration(
            //       color: Colors.white,
            //       borderRadius: BorderRadius.all(Radius.circular(20))),
            //   child: Row(
            //       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         Text(
            //           'Date of Birth:',
            //           style:
            //               TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            //         ),
            //         SizedBox(
            //           width: 15,
            //         ),
            //         Text(
            //           '27th June 1973',
            //           style:
            //               TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            //         )
            //       ]),
            // ),
          ]),
        ));
  }

  Container buildUserInfoContainer(String key, String value) {
    return Container(
            width: double.infinity,
            height: 70,
            margin: EdgeInsets.only(right: 15, left: 15, bottom: 20),
            padding: EdgeInsets.only(left: 15, right: 15),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '$key:',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    '$value',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  )
                ]),
          );
  }
}
