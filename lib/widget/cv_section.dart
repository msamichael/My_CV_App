import 'package:flutter/material.dart';

class CvSection extends StatelessWidget {
  String sectionTitle;
  String sectionValue;
  

  CvSection(
      {super.key,
      required this.sectionTitle,
      required this.sectionValue,
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal:18,vertical: 21 ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [BoxShadow(color:Colors.grey,blurRadius: 3,offset: Offset(0, 1))]

      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text(
            sectionTitle,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
              height: 15,
          ),
          Text(
            sectionValue,
            
            style: TextStyle(fontSize: 15,fontWeight:FontWeight.w500,color: Colors.grey[700]),
            
          )
        ],
      ),
    );
  }
}


