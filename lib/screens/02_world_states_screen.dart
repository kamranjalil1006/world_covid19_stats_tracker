import 'dart:convert';
import 'package:covid_19_tracker/model/world_stats_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:covid_19_tracker/Reuseable Widgets/data_container.dart';
import 'package:http/http.dart' as http;

class WorldStatesScreen extends StatefulWidget {
  @override
  State<WorldStatesScreen> createState() => _WorldStatesScreenState();
}

class _WorldStatesScreenState extends State<WorldStatesScreen> {
  Future<WorldStatsModel> _getWorldStats() async {
    http.Response response =
        await http.get(Uri.parse('https://disease.sh/v3/covid-19/all'));
    var data = jsonDecode(response.body);

    return WorldStatsModel.fromJson(data);
  }

  @override
  void initState() {
    super.initState();
    _getWorldStats();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: SafeArea(
        child: Scaffold(
          body: FutureBuilder<WorldStatsModel>(
              future: _getWorldStats(),
              builder: (context, snapshot) {
                return !snapshot.hasData
                    ? Center(
                        child: CircularProgressIndicator(
                        backgroundColor: Colors.black,
                      ))
                    : Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                Color(0xFF000000),
                                Color(0xFF000000),
                                Colors.white,
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              stops: [0, 0.3, 0.3]),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(top: 50),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'World\nCovid Stats',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 30,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  DataContainer(
                                    title: 'Total Cases',
                                    count: snapshot.data!.cases.toString(),
                                    color: Colors.lightBlueAccent,
                                  ),
                                  DataContainer(
                                    title: 'Active',
                                    count: snapshot.data!.active.toString(),
                                    color: Colors.redAccent.shade100,
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  DataContainer(
                                    title: 'Recovered',
                                    count: snapshot.data!.recovered.toString(),
                                    color: Colors.lightGreenAccent.shade100,
                                  ),
                                  DataContainer(
                                    title: 'Deaths',
                                    count: snapshot.data!.deaths.toString(),
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  DataContainer(
                                    title: 'Total Tests \nToday',
                                    count: snapshot.data!.tests.toString(),
                                    color: Colors.yellow,
                                  ),
                                  DataContainer(
                                    title: 'Positive Cases\nToday',
                                    count: snapshot.data!.todayCases.toString(),
                                    color: Colors.deepPurple,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
              }),
        ),
      ),
    );
  }
}
