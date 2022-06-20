import 'package:cron/cron.dart';
import 'package:cronjob_learn/myhomepage.dart';
import 'package:flutter/material.dart';

void main() async {
  final cron=Cron();
  cron.schedule(Schedule.parse('*/2 * * * * *'), () async{
        // (* * * * * *)==(Second Minute Hour - Month Day)
    print('Every  2 Second');
  },);

  // cron.schedule(Schedule.parse('8-11 * * * *'), () async {
  //   print('between every 8 and 11 minutes');
  // });

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cron Job',
      home: MyHomePage(),
    );
  }
}
