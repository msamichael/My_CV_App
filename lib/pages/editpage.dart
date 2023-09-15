import 'package:cv_app/widget/edit_section.dart';
import 'package:flutter/material.dart';


class EditPage extends StatefulWidget {
  const EditPage({super.key});




  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {

  List? typedCvEditValues=[
    '', //[0] Full Name
    '', //[1] Slack Username
    '', //[2] Github Handle
    '', //[3] Personal Bio
    
  ];

  final fullnameController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
       floatingActionButton: SizedBox(
        width: 90.0, 
  height: 60.0,
        child: FloatingActionButton(
          backgroundColor: Colors.blue[800],
          shape: const RoundedRectangleBorder(
      
      borderRadius: BorderRadius.all(
        Radius.circular(10.0), 
          ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(Icons.save),
                
                Text('Save',style: TextStyle(fontSize: 18)),
              ],
            ),
          ),
          onPressed: () {
          Navigator.pop(

            context,
           typedCvEditValues
          );
        }),
       ),
      
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:16.0),
          child: ListView(
            children: [
              const SizedBox(height:40),
              const Text(
                'Edit',
                style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
              ),
              
                const SizedBox(
                  height: 30,
                ),
              Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               
                
                EditSection(
                  fullName: 'Full Name:',
                  onChanged: (newValue) {
                    typedCvEditValues![0] = newValue.toUpperCase();
                
                  },

                ),
                EditSection(
                  fullName: 'Slack Username:',
                  onChanged: (newValue) {
                    typedCvEditValues![1] = newValue.toUpperCase();
                
                  },

                ),
                EditSection(
                  fullName: 'Github Handle:',
                  onChanged: (newValue) {
                    typedCvEditValues![2] = newValue.toUpperCase();
                
                  },

                ),
                EditSection(
                  fullName: 'Personal Bio:',
                  maxLines: 4,
                  onChanged: (newValue) {
                    typedCvEditValues![3] = newValue.toUpperCase();
                
                  },

                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
