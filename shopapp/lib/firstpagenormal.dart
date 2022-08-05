import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shopapp/carosel_slider.dart';
import 'package:shopapp/model/usermodel.dart';
import 'package:shopapp/profile.dart';
import 'package:shopapp/recipy.dart';
import 'package:shopapp/secondpage.dart';

class FirstPageNormal extends StatefulWidget {
  const FirstPageNormal({Key? key}) : super(key: key);
  @override
  State<FirstPageNormal> createState() => _FirstPageNormalState();
}

class _FirstPageNormalState extends State<FirstPageNormal> {
  bool isnight = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          isnight == false ? Color.fromARGB(255, 172, 192, 225) : Colors.black,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hand picked fresh\nitems only for you!",
                      style: TextStyle(
                          color: isnight == true ? Colors.white : Colors.black,
                          fontSize: 26),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.notification_add,
                          color: isnight == false ? Colors.black : Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              isnight = !isnight;
                            });
                          },
                          child: Container(
                              height: 30,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: isnight == true
                                      ? Color.fromARGB(255, 34, 69, 129)
                                      : Colors.blueAccent,
                                  borderRadius: BorderRadius.circular(50)),
                              child: Icon(
                                isnight == false
                                    ? Icons.sunny
                                    : Icons.nightlight,
                                color: Colors.white,
                              )),
                        )
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          Text(
                            "Search for anything",
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          )
                        ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Categories",
                        style: TextStyle(
                            color:
                                isnight == true ? Colors.white : Colors.black,
                            fontSize: 18),
                      ),
                      Text(
                        "See all",
                        style:
                            TextStyle(color: Colors.deepOrange, fontSize: 16),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 130,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: myList.length,
                      itemBuilder: (context, index) {
                        return Padding(
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.deepOrange,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20)),
                                    child: Image.network(
                                      "${myList[index].img}",
                                      height: 100,
                                      width: 130,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Text(
                                    "${myList[index].name}",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: isnight == false
                                            ? Colors.black
                                            : Colors.white),
                                  )
                                ],
                              ),
                            ),
                            padding: EdgeInsets.only(right: 30));
                      }),
                ),
                SizedBox(
                  height: 10,
                ),
                CaroselSliderLoading(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SecondPage(),
                          ));
                        },
                        child: Container(
                          child: Text(
                            "Populer Deals",
                            style: TextStyle(
                                color: isnight == true
                                    ? Colors.white
                                    : Colors.black,
                                fontSize: 20),
                          ),
                        ),
                      ),
                      Text(
                        "See All",
                        style:
                            TextStyle(color: Colors.deepOrange, fontSize: 16),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  height: 190,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: myList.length,
                      itemBuilder: (context, index) {
                        return Padding(
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20)),
                              height: 130,
                              width: 150,
                              child: Stack(
                                children: [
                                  Positioned(
                                      right: 0,
                                      left: 0,
                                      top: 30,
                                      child: Container(
                                        height: 130,
                                        width: 150,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.white,
                                        ),
                                      )),
                                  Positioned(
                                    left: 20,
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: CircleAvatar(
                                            backgroundImage: NetworkImage(
                                                "${myList[index].img}"),
                                            radius: 50,
                                          ),
                                        ),
                                        Text(
                                          "${myList[index].name}",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            padding: EdgeInsets.only(right: 30));
                      }),
                ),
                Container(
                  height: 50,
                  color: Colors.amber,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => FirstPageNormal()));
                          },
                          child: Column(
                            children: [Icon(Icons.home), Text("Home")],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Recipy()));
                          },
                          child: Column(
                            children: [Icon(Icons.receipt), Text("Racipe")],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Profile()));
                          },
                          child: Column(
                            children: [Icon(Icons.person), Text("Profile")],
                          ),
                        )
                      ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
