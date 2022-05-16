import 'package:exam2/cart.dart';
import 'package:flutter/material.dart';

class Product_Show extends StatefulWidget {
  Product_Show({Key? key, this.name, this.img, this.price, this.description})
      : super(key: key);

  String? img;
  String? name;
  String? description;
  double? price;

  @override
  State<Product_Show> createState() => _Product_ShowState();
}

class _Product_ShowState extends State<Product_Show> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.grey,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Center(
                  child: Stack(
                children: [
                  Image.network(widget.img!),
                  Positioned(
                      bottom: 30,
                      top: 50,
                      child: Row(
                        children: [
                          Divider(
                            color: Colors.black,
                            thickness: 1,
                          )
                        ],
                      ))
                ],
              )),
              Row(
                children: [
                  Icon(
                    Icons.shopping_cart,
                    color: Colors.blue,
                  ),
                  Text(
                    'Shopping',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.blue),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    widget.name!,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Spacer(),
                  Icon(
                    Icons.anchor,
                    color: Colors.blue,
                  )
                ],
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
              ListTile(
                leading: Icon(Icons.pin),
                title: Text('2 Petre Meilvilla st.'),
                subtitle: Text('0162,Texas'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              Divider(
                thickness: 1,
              ),
              Text(
                '\$ ${widget.price!}',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text(
                'Tax Rate 2%',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    color: Colors.black),
              ),
              Center(
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => Cart(
                                    img: widget.img,
                                    name: widget.name,
                                    price: widget.price,
                                  ))));
                    },
                    child: Text('ADD TO CART')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
