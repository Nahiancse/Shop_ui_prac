import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  Cart({Key? key, this.name, this.img, this.price, this.description})
      : super(key: key);

  String? img;
  String? name;
  String? description;
  double? price;

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  double price = 0;
  int total = 1;
  double shipping = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Order Details',
          style: TextStyle(
              // fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
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
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'My Cart',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Row(
                children: [
                  Image.network(
                    widget.img!,
                    height: 80,
                    width: 80,
                  ),
                  Column(
                    children: [
                      Text(
                        widget.name!,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                        '\$ ${total * widget.price!}',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                            color: Colors.black),
                      ),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  total++;
                                });
                              },
                              icon: Icon(Icons.add)),
                          Text(
                            '${total}',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  total--;
                                });
                              },
                              icon: Icon(Icons.remove)),
                        ],
                      )
                    ],
                  )
                ],
              ),
              Text(
                'Delivery Location',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              ListTile(
                leading: Icon(Icons.pin),
                title: Text('2 Petre Meilvilla st.'),
                subtitle: Text('0162,Texas'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              Text(
                'Payment Method',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              ListTile(
                leading: Icon(Icons.credit_card),
                title: Text('VISA Classic'),
                subtitle: Text('***0166'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              Text(
                'Order Info',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Row(
                children: [
                  Text(
                    'Subtotal',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                  Spacer(),
                  Text('\$${total * widget.price!}')
                ],
              ),
              Row(
                children: [
                  Text(
                    'Shipping Cost',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                  Spacer(),
                  Text('\+\$${shipping}')
                ],
              ),
              Row(
                children: [
                  Text(
                    'Total',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                  Spacer(),
                  Text(
                    '\$${total * widget.price! + shipping},',
                  )
                ],
              ),
              Center(
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text('CHECKOUT (\$${widget.price! + shipping})')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
