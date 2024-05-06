import 'package:flutter/material.dart';
class SettingView extends StatefulWidget {
  const SettingView({super.key});

  @override
  State<SettingView> createState() => _SettingViewState();
}

class _SettingViewState extends State<SettingView> {

  int counter = 0;

  Future futureCall()async{
    await Future.delayed(Duration(seconds: 2));
    return counter + counter;
  }
  Stream streamCall()async*{
    while(true){
      await Future.delayed(Duration(seconds: 2));
      yield counter++;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Future Counter $futureCounter",
          style: const TextStyle(fontSize: 30),
          ),
          const SizedBox(height: 50,),
          Text("Future $streamCounter",style: const TextStyle(fontSize: 30),)
        ],
      ),
    );
  }
}
