import 'package:confuse/core/utils/colors.dart';
import 'package:flutter/material.dart';

class Categorylistveiw extends StatefulWidget {
  const Categorylistveiw({super.key});

  @override
  State<Categorylistveiw> createState() => _CategorylistveiwState();
}

class _CategorylistveiwState extends State<Categorylistveiw> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Container(
                padding: EdgeInsets.only(top: 10),
                height: 105,
                width: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black12),
                child: Column(
                  children: [
                    Image.asset('assets/images/Listveiwimage.png'),
                    const Text(
                      'Broccoli',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            );
          },
          itemCount: 10),
    );
  }
}
