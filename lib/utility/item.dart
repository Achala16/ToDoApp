import 'package:flutter/material.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';

class ToDoItem extends StatelessWidget {


  final String itemName;
  final bool completed;
  Function (bool?)? onChanged;
  Function (BuildContext)?  deleteFunction;





   ToDoItem({
    super.key,
    required this.itemName,
    required this.completed,
    required this.onChanged,
     required this.deleteFunction,
  });


  @override

  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(right: 24,left: 24,top: 24),

        child: Container(
          padding: const EdgeInsets.all(22),
          decoration:  BoxDecoration(
            color: Colors.cyan[300] ,
            borderRadius: BorderRadius.circular(8)

          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children:  [
              Text(
                  itemName,
                style:  TextStyle(
                    decoration: completed
                        ?TextDecoration.lineThrough
                        :TextDecoration.none
                ),

              ),

              Row(

                mainAxisAlignment: MainAxisAlignment.end,
                children: [

                  Checkbox(
                    value: completed,
                    onChanged: onChanged,

                    activeColor: Colors.black,

                  ),

                  IconButton(
                      onPressed: () => deleteFunction!(context),
                      icon: Icon(Icons.delete_forever))
                ],


              )





            ],
          ),

        ),

    );
  }
}
