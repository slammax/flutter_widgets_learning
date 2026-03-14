import 'package:flutter/material.dart';
import 'package:flutter_widgets/data/contants.dart';
import 'package:flutter_widgets/views/widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(40),
        child: Column(
          children: [
            Column(
              mainAxisSize: .min,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(500),
                  ),
                  child: HeroWidget(title: 'Home'),
                ),

                SizedBox(height: 20),
                SizedBox(
                  width: .infinity,
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Text(
                            'Some text inside',
                            style: KTextStyle.titleTealText,
                          ),
                          Text(
                            'Some text inside',
                            style: KTextStyle.descriptionText,
                          ),
                          Text(
                            'Some text inside',
                            style: KTextStyle.descriptionText,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
