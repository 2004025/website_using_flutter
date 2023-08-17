import 'package:flutter/material.dart';
import 'package:flutter_app/pages/containers/container2.dart';
import 'package:flutter_app/pages/containers/containers1.dart';
import 'package:flutter_app/utils/constants.dart';
import 'package:flutter_app/widgets/navbar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    w= MediaQuery.of(context).size.width;

    h=MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              NavBar(),
              Container1(),
              Container2(),
            ],
          ),

        ),
      ),
    );
  }
}
