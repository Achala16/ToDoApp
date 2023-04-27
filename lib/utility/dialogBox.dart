import 'package:flutter/material.dart';

import 'appButton.dart';



class DialogBox extends StatelessWidget {

  final controller;

  VoidCallback whenSave;
  VoidCallback whenCancel;

 DialogBox({Key? key, this.controller,required this.whenCancel,required this.whenSave}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(

      backgroundColor: Colors.cyan[100],

      content: Container(
        height: 150,
        width: 180,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:  [
            //to get inputs
             TextField(

              controller: controller ,

              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Add a New Item'
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                AppButton(
                    text: 'Cancel',
                    onPressed: whenCancel),

                const SizedBox(width: 15,),

                AppButton(
                    text: 'Save',
                    onPressed: whenSave),



              ],



            ),




          ],

        ),
      ),




    );
  }
}
