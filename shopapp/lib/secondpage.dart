import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shopapp/firstpagenormal.dart';
import 'package:shopapp/model/usermodel.dart';
import 'package:shopapp/profile.dart';
import 'package:shopapp/recipy.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 172, 192, 225),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 172, 192, 225),
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 30,
          ),
        ),
        title: Text(
          "Popular Deals",
          style: TextStyle(color: Colors.black, fontSize: 26),
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
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
              Expanded(
                  child: GridView.builder(
                      //scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: myList.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20,
                          childAspectRatio: 0.90,
                          crossAxisCount: 2),
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                  right: 0,
                                  left: 0,
                                  top: 30,
                                  child: Container(
                                    height: 170,
                                    width: 150,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white,
                                    ),
                                  )),
                              Positioned(
                                left: 35,
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
                                    Text(
                                      "${myList[index].details}",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Text("ট${myList[index].price}"),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Container(
                                            color: Colors.deepOrange,
                                            child: Icon(
                                              Icons.add,
                                              color: Colors.white,
                                            ))
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      })),
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
