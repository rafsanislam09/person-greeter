import 'package:flutter/material.dart';

void main() => runApp(const GreeterApp());

class GreeterApp extends StatefulWidget {
  const GreeterApp({super.key});

    @override
    _GreeterAppState createState() => _GreeterAppState();
}
class _GreeterAppState extends State<GreeterApp> {

    String name = '';
    String getGreeting() {
    final hour = DateTime.now().hour;
    if(hour < 12) {
        return 'Good Morning';
    }else if(hour < 17) {
        return 'Good Afternoon';
    }else{
        return 'Good Evening';
    }
}

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            home: Scaffold(
                appBar: AppBar(
                    title: const Text("Gladly Welcome"),
                ),
                body: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                            TextField(
                                decoration: const InputDecoration(
                                    labelText: 'Enter your name',
                                ),
                                onChanged: (text) {
                                    setState(() {
                                      name = text;
                                    });
                                },
                            ),
                            const SizedBox(height: 20,),
                            Text(
                                '${getGreeting()}, $name',
                                style: const TextStyle(fontSize: 30),
                            ),
                        ]
                    ),
                ),
            ),
        );
    }
}
