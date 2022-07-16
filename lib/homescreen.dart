import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/homepage_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<HomepageController>(context);

    return Scaffold(
      body: Center(
          child: Text(
        'Value : ${controller.value}',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
      )),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 65,
          width: 210,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40), color: Colors.black),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    controller.decreaseValue();
                  },
                  icon: Icon(
                    Icons.remove,
                    color: Colors.white,
                    size: 40,
                  )),
              IconButton(
                  onPressed: () {
                   controller.increaseValue();
                  },
                  icon: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 40,
                  ))
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
