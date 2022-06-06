import 'package:untitled/main.dart';
import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  Result({Key? key,required this.bmi}) : super(key: key);
  double bmi;
  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      appBar: AppBar(
        title: Text("Result"),
        backgroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            decoration:BoxDecoration(
                color: Colors.redAccent, borderRadius: BorderRadius.circular((100))),
            height : 400,
            width : 400,
            child: Column(
              children: [
                Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Text("YOUR BMI IS ${widget.bmi}",
                        style:TextStyle(
                            fontSize: 20))),
              ],
            ),

          ),
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child:
            Center(
              child: Container(
                decoration:BoxDecoration(
                    color: Colors.redAccent, borderRadius: BorderRadius.circular((200))),
                height: 75,
                width: 200,
                child: Center(child: Text("Recalculate"),),
              ),
            ),
          ),
          // RatingBar.builder(
          //   initialRating: 3,
          //   minRating: 1,
          //   direction: Axis.horizontal,
          //   allowHalfRating: true,
          //   itemCount: 5,
          //   itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
          //   itemBuilder: (context, _) => Icon(
          //     Icons.star,
          //     color: Colors.amber,
          //   ),
          //   onRatingUpdate: (rating) {
          //     print(rating);
          //   },

        ],
      ),
    );
  }
}

