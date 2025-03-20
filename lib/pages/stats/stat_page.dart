import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:myfinance/pages/stats/chart.dart';

class StatPage extends StatelessWidget {
  const StatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 26),
          child: Column(
            children: [
              Text(
                "Transation",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Gap(20),

              Container(
                padding: EdgeInsets.fromLTRB(12, 20, 12, 12),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Chart(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
