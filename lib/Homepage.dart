import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/calc.dart';

class bmi extends StatefulWidget {
  const bmi({Key? key}) : super(key: key);

  @override
  State<bmi> createState() => _bmiState();
}

class _bmiState extends State<bmi> {
  String gender = "female";
  double weight = 0.0;
  int age = 0;
  double height = 0.0;

  @override
  Widget build(BuildContext context) {
    doubleweight() {
      setState(() {
        weight = weight + 10;
      });
    }

    Increaseweight() {
      setState(() {
        weight = weight + 1;
      });
    }

    decreaseweight() {
      setState(() {
        weight = weight - 1;
      });
    }

    Increaseage() {
      setState(() {
        age = age + 1;
      });
    }

    decreaseage() {
      setState(() {
        age = age - 1;
      });
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Row(
          children: [
            Text(" BMI"),
            Spacer(),
            CircleAvatar(
              backgroundImage: NetworkImage(
                  "http://m.gettywallpapers.com/wp-content/uploads/2021/03/Cool-HD-Wallpaper.jpg",
                  scale: 1),
            )
          ],
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.lightBlue.shade800,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                margin: EdgeInsets.all(20),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          gender = "male";
                        });
                      },
                      child: Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width * 0.4,
                        decoration: BoxDecoration(
                          color: Color(0xff3838bc),
                          borderRadius: BorderRadius.circular(23),
                          border: Border.all(
                            color: Colors.grey,
                            width: gender == "male" ? 8 : 0,
                          ),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Image.asset(
                              "asset/male.png",
                              width: 150,
                              height: 100,
                            ),
                            SizedBox(
                              height: 22,
                            ),
                            Text(
                              "MALE",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 22,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          gender = "female";
                        });
                        print(gender);
                      },
                      child: Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width * 0.4,
                        decoration: BoxDecoration(
                          color: Color(0xff3838bc),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: gender == "female"
                                ? Colors.pinkAccent.shade100
                                : Colors.transparent,
                            width: gender == "female" ? 8 : 0,
                          ),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 22),
                            Image.asset(
                              "asset/women.png",
                              width: 150,
                              height: 100,
                              scale: 1,
                            ),
                            SizedBox(
                              height: 22,
                            ),
                            Text(
                              "FEMALE",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 22,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                margin: EdgeInsets.all(18),
                height: 120,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.indigo.withOpacity(1),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 13,
                    ),
                    Text(
                      " Height",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Slider(
                      min: 0.0,
                      max: 200.0,
                      divisions: 200,
                      value: height,
                      onChanged: (val) {
                        setState(() {
                          height = val;
                        });
                      },
                    ),
                    Text(
                      height.toString(),
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                margin: EdgeInsets.all(20),
                child: Row(
                  children: [
                    GestureDetector(
                      child: Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width * 0.4,
                        decoration: BoxDecoration(
                          color: Color(0xff3838bc)..withOpacity(0.3),
                          borderRadius: BorderRadius.circular(23),
                          border: Border.all(
                            color: Colors.grey,
                            width: 0,
                          ),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 22,
                            ),
                            const Text(
                              "WEIGHT",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 22,
                                  color: Colors.white),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              weight.toString(),
                              style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 25,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 29,
                            ),
                            Container(
                              width: 120,
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    child: GestureDetector(
                                      onLongPress: () {
                                        setState(() {
                                          doubleweight();
                                        });
                                      },
                                      onTap: () {
                                        setState(() {
                                          Increaseweight();
                                        });
                                      },
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  CircleAvatar(
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          decreaseweight();
                                        });
                                      },
                                      child: Icon(
                                        Icons.remove,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      child: Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width * 0.4,
                        decoration: BoxDecoration(
                          color: Color(0xff3838bc)..withOpacity(0.3),
                          borderRadius: BorderRadius.circular(23),
                          border: Border.all(
                            color: Colors.grey,
                            width: 0,
                          ),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 22,
                            ),
                            const Text(
                              "AGE",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 22,
                                  color: Colors.white),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              age.toString(),
                              style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 25,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 29,
                            ),
                            Container(
                              width: 120,
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          Increaseage();
                                        });
                                      },
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  CircleAvatar(
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          decreaseage();
                                        });
                                      },
                                      child: Icon(
                                        Icons.remove,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            calc(weight: weight, height: height),
                      ),
                    );
                  });
                },
                child: Container(
                  margin: EdgeInsets.all(23),
                  padding: EdgeInsets.all(10),
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.indigo,
                  child: Center(
                    child: Text(
                      "Calculate my BMI",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
