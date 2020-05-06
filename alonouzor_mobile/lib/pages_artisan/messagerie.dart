import 'package:flutter/material.dart';

class Messagerie extends StatefulWidget{
  @override
  _MessagerieState createState() =>  _MessagerieState();
       
    }
  
  class _MessagerieState extends State <Messagerie> {
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
     // backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          iconSize: 30.0,
          color: Colors.white, 
          onPressed: () {},
        ),
        title: Text('Messages',
           style: TextStyle(
             fontSize: 25.0,
             fontWeight: FontWeight.bold 
             ),
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton( 
            icon: Icon(Icons.search),
            iconSize: 30.0,
            color: Colors.white, 
            onPressed: () {},
            )
        ],
      ),
      body: Column(
        children: <Widget>[
          CategorySelector(),
          Expanded(
               child: Container(
               height: 500.0,
               decoration: BoxDecoration(
                 color: Colors.white10 ,
                 borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0)
                 ),
               ),
            ),
          ),
            ],
            ),
          );
      }
}
          
          class CategorySelector extends StatefulWidget {
          @override
          _CategorySelectorState createState()=>_CategorySelectorState();
          
          }
          
          class _CategorySelectorState  extends State <CategorySelector>{

          int selectedIndex = 0;
          final List<String> categories=['Discussions', 'Requetes'];
          @override
          Widget build(BuildContext context) {
            return Container(
              height: 20.0,
              color: Theme.of(context).primaryColor ,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (BuildContext context, int index){
                  return GestureDetector(
                    onTap: (){
                      setState((){
                        selectedIndex = index;
                      });
                    },
                      child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
                      child: Text(categories[index],
                             style: TextStyle(
                               color: index == selectedIndex? Colors.white: Colors.white60,
                               fontSize: 25.0,
                               fontWeight: FontWeight.bold,
                               letterSpacing: 1.2
                             ),
                          ),
                       ),
                  );
                  },
                ),
              );
          }
}
  
  
  
  