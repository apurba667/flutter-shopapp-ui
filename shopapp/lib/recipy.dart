import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shopapp/firstpagenormal.dart';
import 'package:shopapp/model/usermodel.dart';
import 'package:shopapp/profile.dart';
import 'package:shopapp/secondpage.dart';

class Recipy extends StatefulWidget {
  const Recipy({Key? key}) : super(key: key);

  @override
  State<Recipy> createState() => _RecipyState();
}

class _RecipyState extends State<Recipy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 172, 192, 225),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Text(
                "Choose your one\n from 1000+ Racipes!",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
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
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(color: Colors.deepOrange, fontSize: 16),
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
                                      color: Colors.black),
                                )
                              ],
                            ),
                          ),
                          padding: EdgeInsets.only(right: 30));
                    }),
              ),
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
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(color: Colors.deepOrange, fontSize: 16),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 370,
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
    );
  }
}
