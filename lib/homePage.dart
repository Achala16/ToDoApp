import 'package:flutter/material.dart';
import 'package:todo_app/utility/appButton.dart';
import 'package:todo_app/utility/dialogBox.dart';
import 'utility/item.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  final _controller = TextEditingController();

  //list items here
  List toDoList = [

  ];


  void checkBoxChanged(bool? value, int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  void saveNewItem(){
    setState(() {
      toDoList.add([_controller.text,false]);
      _controller.clear();
    });

    Navigator.of(context).pop();



  }

  void createNewItem(){
    
    showDialog(
        context: context,
        builder: (context){

          return DialogBox(
            controller: _controller,
            whenCancel: () => Navigator.of(context).pop() ,
            whenSave: saveNewItem,
          );
        },
    );

  }

  void deleteItem(int index){
    setState(() {
      toDoList.removeAt(index);



    });




  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text(
          'To DO List',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            //fontStyle: FontStyle.italic
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
      ),

      floatingActionButton: FloatingActionButton(

        onPressed: createNewItem,
        child: Icon(Icons.add),

      ),

      body: ListView.builder(

        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          return ToDoItem(
              itemName: toDoList[index][0],
              completed: toDoList[index][1],
              onChanged: (value) => checkBoxChanged(value, index),
              deleteFunction: (BuildContext context) => deleteItem(index),

          );
        },

      ),
    );
  }
}
