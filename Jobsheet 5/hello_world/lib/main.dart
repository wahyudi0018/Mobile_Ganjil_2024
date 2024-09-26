import 'package:flutter/material.dart';
import 'package:hello_world/basic_widgets/datetime_widget.dart';
import 'package:hello_world/basic_widgets/dialog_widget.dart';
import 'package:hello_world/basic_widgets/fab_widget.dart';
import 'package:hello_world/basic_widgets/loading_cupertino.dart';
import 'package:hello_world/basic_widgets/image_widget.dart';
import 'package:hello_world/basic_widgets/text_widget.dart';  

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('All Widgets Example')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const MyTextWidget(),
              const SizedBox(height: 20),
              const MyImageWidget(),
              const SizedBox(height: 20),
              const DateTimeWidget(),
              const SizedBox(height: 20),
              const MyLoadingCupertino(),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => showAlertDialog(context),
                child: const Text("Show Alert Dialog"),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: const MyFabWidget(), // Floating Action Button
    );
  }
}

