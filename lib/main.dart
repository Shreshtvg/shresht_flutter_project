import 'package:flutter/material.dart';
import 'package:untitled/result.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

double height=150;
int weight=50;
double bmi=0;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      appBar: AppBar(
        title: Text("BMI CALCULATOR",textAlign: TextAlign.center),
        centerTitle: true,
        backgroundColor: Colors.black12,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("WELCOME TO MY BMI CALCULATOR",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
              ),),

           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,

             children:[
            Container(
              decoration:BoxDecoration(
                  color: Colors.redAccent, borderRadius: BorderRadius.circular((200))),

              height: 175,
              width: 400,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Text("${height.round()}",
                      style:TextStyle(fontSize: 30)
                      ,),
                  ),
                  Slider(
                    value: height,
                    max: 200,
                    min: 100,
                    onChanged: (newValue) {
                      setState(() {
                        height = newValue;
                      });
                    },
                  )
                ],
              ),
            ),
            Container(
              decoration:BoxDecoration(
                color: Colors.redAccent, borderRadius: BorderRadius.circular((200))),
              height: 175,
              width: 400,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Text("${weight.round()}",
                      style:TextStyle(
                          fontSize: 30)
                      ,),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(onPressed: (){
                        setState((){
                          weight++;
                        });

                        print(weight);
                      }, child: Icon(Icons.add,color: Colors.black,)),
                      TextButton(onPressed: (){
                        setState((){
                          weight--;
                        });

                        print(weight);
                      }, child: Icon(Icons.remove,color: Colors.black,))
                    ],
                  ),

                ],
              ),
            ),
           ],
           ),
            GestureDetector(
              onTap: (){
                setState((){
                  double x;
                  x=weight/(height*height*0.0001);
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Result(bmi :x)));});

              },
              child:   Container(
                decoration:BoxDecoration(
                    color: Colors.redAccent, borderRadius: BorderRadius.circular((200))),
                height: 70,
                width: 200,
                child: Center(child: Text("Calculate")),
              ),
            )

          ],
        ),
      ),
    );
  }
}
















