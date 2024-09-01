// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Project2 extends StatelessWidget {
   Project2({super.key});

  TextEditingController _controller = TextEditingController();
  TextEditingController _controller1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 153, 167, 174).withAlpha(2).withOpacity(0.1),
      appBar: AppBar(
        title: Text('Form field'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 150),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                controller:_controller1 ,
                decoration: InputDecoration(
                  hintText: 'enter your username',
                    hintStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                controller: _controller ,
                obscureText: true,
                  decoration: InputDecoration(
                    
                    hintText: 'enter password',
                    hintStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    )
                  ),
                ),
            ),
            SizedBox(height: 30,),
            ElevatedButton(onPressed:() {
              print(_controller.toString());
              print(_controller1.toString());
            }, child: Text('SUBMIT'))
          ],
        ),
      ),
    );
  }
}