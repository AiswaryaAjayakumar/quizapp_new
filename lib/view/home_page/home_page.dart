import 'package:flutter/material.dart';
import 'package:quizapp_model/utils/color_constant.dart';
import 'package:quizapp_model/view/question_four/question_four.dart';
import 'package:quizapp_model/view/question_screen/question_screen.dart';
import 'package:quizapp_model/view/question_three/question_three.dart';
import 'package:quizapp_model/view/question_two/question_two.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List<Map> homepageList = [
      {
        "title": "Sports",
        "itemimage":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzgpCNgDuAmTbFHgC98_fl-KzgMbROcy7LJQ&usqp=CAU",
        "no": "5 Questions"
      },
      {
        "title": "Chemistry",
        "itemimage":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRTx_heTRiZyrY507zyVHKXQRfmK7Zsrk4LA&usqp=CAU",
        "no": "5 Questions"
      },
      {
        "title": "Math",
        "itemimage":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7DWAy0M3ULstBP6SmaIhbfPIi2D-SA7aiXw&usqp=CAU",
        "no": "5 Questions"
      },
      {
        "title": "History",
        "itemimage":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQb3WrHaXtUJ3PK2OD_8o0b1mMRDQA1rj3bEg&usqp=CAU",
        "no": "5 Questions"
      },
    ];
    return Scaffold(
      backgroundColor: Colorconstant.mycustomblack,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi, Aishu',
                        style: TextStyle(
                            color: Colorconstant.mycustomwhite,
                            fontSize: 25,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        'Lets make this day more productive',
                        style: TextStyle(
                            color: Colorconstant.mycustomwhite, fontSize: 14),
                      )
                    ],
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://images.pexels.com/photos/712513/pexels-photo-712513.jpeg?auto=compress&cs=tinysrgb&w=800"),
                          fit: BoxFit.cover),
                      color: Colors.orange[300],
                      borderRadius: BorderRadius.circular(30),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 50,
                width: 300,
                child: Center(
                  child: Text(
                    'Choose a category',
                    style: TextStyle(
                        color: Colorconstant.mycustomwhite,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 55, 55, 55),
                    borderRadius: BorderRadiusDirectional.circular(15)),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    '   Lets play',
                    style: TextStyle(
                        color: Colorconstant.mycustomwhite, fontSize: 17),
                  ),
                ],
              ),
              SizedBox(
                height: 18,
              ),
              Expanded(
                child: GridView.builder(
                  itemCount: 4, // Set your desired number of items
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // Adjust as per your needs
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 20,
                      mainAxisExtent: 230),
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        if (index == 0) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => QuestionScreen(),
                            ),
                          );
                        } else if (index == 1) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Questiontwo(),
                            ),
                          );
                        } else if (index == 2) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => QuestionThree(),
                            ),
                          );
                        } else if (index == 3) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => QuestionFour(),
                            ),
                          );
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 73, 71, 71),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.network(
                                homepageList[index]["itemimage"],
                                fit: BoxFit.fill,
                              ),
                              SizedBox(height: 10),
                              Text(
                                homepageList[index]["title"],
                                style: TextStyle(
                                    color: Colorconstant.mycustomwhite,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                              Text(
                                homepageList[index]["no"],
                                style: TextStyle(
                                    color: Color.fromARGB(255, 159, 157, 157),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
