import'package:flutter/material.dart';

class EditSection extends StatelessWidget {

  void Function(String)? onChanged;
  String fullName;
  int? maxLines = 1;



   EditSection({
    super.key,
    required this.onChanged,
    required this.fullName,
    this.maxLines,
   });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
           Text(
                fullName,
                style: const TextStyle(fontSize: 20),
              ),
              SizedBox(height: 10,),
              TextFormField(
                maxLines: maxLines,
                decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade400),
                  ),
                  fillColor: Colors.grey.shade200,
                  filled: true,
                ),
               
                onChanged: onChanged,
              ),
      ],
    );
  }
}

