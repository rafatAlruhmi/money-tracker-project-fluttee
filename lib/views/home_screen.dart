import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:money_tracker/views/add_expense.dart';
import 'package:money_tracker/views/main_screen.dart';
import 'dart:math';
import 'state_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var widgetList = [MainScreen(), StateScreen()];

  int index = 0;

  Color selectedItem = Colors.blue;
  Color unselectedItem = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).colorScheme.tertiary,
      //   title: const Text(
      //     'Expense Tracker App!',
      //   ),
      //   centerTitle: true,
      // ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
        child: BottomNavigationBar(
            onTap: (value) {
              setState(() {
                index = value;
              });
            },
            backgroundColor: Colors.white,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            elevation: 3,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    CupertinoIcons.home,
                    color: index == 0 ? selectedItem : unselectedItem,
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.graph_square_fill,
                  color: index == 1 ? selectedItem : unselectedItem,
                ),
                label: 'Info',
              ),
            ]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => const AddExpense(),
                ));
          },
          shape: const CircleBorder(),
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Theme.of(context).colorScheme.tertiary,
                    Theme.of(context).colorScheme.secondary,
                    Theme.of(context).colorScheme.primary,
                  ],
                  transform: const GradientRotation(pi / 4),
                ),
                shape: BoxShape.circle),
            child: const Icon(CupertinoIcons.add),
          )),
      body: index == 0 ? MainScreen() : StateScreen(),
    );
  }
}
