import 'package:flutter/material.dart';
import 'package:exam2/model.dart';
import 'package:exam2/product_show.dart';

class First_Page extends StatefulWidget {
  const First_Page({Key? key}) : super(key: key);

  @override
  State<First_Page> createState() => _First_PageState();
}

class _First_PageState extends State<First_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.grey,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search_rounded,
                  color: Colors.grey,
                )),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hi-Fi Shop & Service",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Audio Shop on Rustaveli Ave 57.",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w200,
                            color: Colors.black),
                      ),
                      Text(
                        "This shop offers both products and services",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w200,
                            color: Colors.black),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    "Products",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "41",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w200,
                        color: Colors.black),
                  ),
                  Spacer(),
                  Text(
                    "Show all",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              // ListTile(
              //   leading: Row(
              //     children: [
              //       Text("Product 41"),
              //       Text("41"),
              //       Text("Show all")
              //     ],
              //   ),
              //   trailing: Text("Show all"),
              // ),

              //expanded
              Expanded(
                flex: 1,
                child: Container(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: myList.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => Product_Show(
                                        img: myList[index].img,
                                        name: myList[index].name,
                                        price: myList[index].price,
                                      ))));
                        },
                        child: Container(
                          // height: 250,
                          width: 200,
                          padding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.network(
                                "${myList[index].img}",
                                height: 80,
                                width: 80,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Flexible(
                                child: Text(
                                  "${myList[index].name}",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "\$ ${myList[index].price}",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),

              Row(
                children: [
                  Text(
                    "Accessories",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "19",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w200,
                        color: Colors.black),
                  ),
                  Spacer(),
                  Text(
                    "Show all",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                flex: 1,
                child: Container(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: myList.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => Product_Show(
                                        img: myList[index].img,
                                        name: myList[index].name,
                                        price: myList[index].price,
                                      ))));
                        },
                        child: Container(
                          width: 200,
                          padding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.network(
                                "${myList[index].img}",
                                height: 80,
                                width: 110,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text("${myList[index].name}"),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.circle,
                                    color: Colors.green,
                                    size: 10,
                                  ),
                                  Text(
                                    "Available",
                                    style: TextStyle(color: Colors.green),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text("\$${myList[index].price}"),
                            ],
                          ),
                        ),
                      );
                    },
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
