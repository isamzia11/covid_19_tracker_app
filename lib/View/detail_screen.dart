import 'package:covid_19_tracker_app/components/reusable_row.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  String name;
  String image;
  int totalCases,
      totalDeaths,
      totalRecovered,
      active,
      critical,
      todayRecovered,
      test;
  DetailScreen(
      {super.key,
      required this.name,
      required this.image,
      required this.active,
      required this.critical,
      required this.test,
      required this.totalDeaths,
      required this.todayRecovered,
      required this.totalCases,
      required this.totalRecovered});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor: Colors.black12,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          widget.name,
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * .067),
                  child: Card(
                    color: const Color.fromARGB(255, 52, 51, 51),
                    child: Column(
                      children: [
                        SizedBox(
                            height: MediaQuery.of(context).size.height * .06),
                        ReusableRow(
                            title: 'Total',
                            value: widget.totalCases.toString()),
                        ReusableRow(
                            title: 'Total Deaths',
                            value: widget.totalDeaths.toString()),
                        ReusableRow(
                            title: 'Total Recovered',
                            value: widget.totalRecovered.toString()),
                        ReusableRow(
                            title: 'Active', value: widget.active.toString()),
                        ReusableRow(
                            title: 'Critical',
                            value: widget.critical.toString()),
                        ReusableRow(
                            title: 'Tests', value: widget.test.toString()),
                        ReusableRow(
                            title: 'Today Recovered',
                            value: widget.todayRecovered.toString())
                      ],
                    ),
                  ),
                ),
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(widget.image),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
