import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget {
  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedIndex = 0;

<<<<<<< HEAD
      final List<String> categories = ['Discussions'];
      @override
      Widget build(BuildContext context) {
        return Container(
          height: 90.0,
          color: Theme.of(context).primaryColor,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (BuildContext context, int index){
              return GestureDetector(
                onTap: () {
                  setState((){
                    selectedIndex = index;
                  });
                },
                  child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, 
                    vertical: 30.0,
                    ),
                  child: Text(
                    categories[index],
                    style: TextStyle(
                        color: index == selectedIndex ? Colors.white : Colors.white60,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.1
                      ),
                      ),
                    ),
              );
              },
=======
  final List<String> categories = ['Discussions', 'Requetes'];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      color: Theme.of(context).primaryColor,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 30.0,
              ),
              child: Text(
                categories[index],
                style: TextStyle(
                    color:
                        index == selectedIndex ? Colors.white : Colors.white60,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.1),
              ),
>>>>>>> 458105a83afdbce6bad57cdfbaaabd57aef0c5ae
            ),
          );
        },
      ),
    );
  }
}