import 'package:flutter/material.dart';

class WeatherHome extends StatefulWidget {
  const WeatherHome({super.key});

  @override
  State<WeatherHome> createState() => _WeatherHomeState();
}

class _WeatherHomeState extends State<WeatherHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Weather App',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.refresh),
              onPressed: () {
                print('refresh');
              },
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                child: Card(
                    child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(children: [
                    Text("300° K",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w500)),
                    SizedBox(
                      height: 10,
                    ),
                    Icon(Icons.wb_sunny, size: 50, color: Colors.orange),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Sunny",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500)),
                  ]),
                )),
              ),
              SizedBox(
                height: 20,
              ),
              Placeholder(
                fallbackHeight: 150,
              ),
              SizedBox(
                height: 20,
              ),
              Placeholder(
                fallbackHeight: 150,
              ),
            ],
          ),
        ));
  }
}
