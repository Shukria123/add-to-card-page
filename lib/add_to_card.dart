import 'package:flutter/material.dart';

class AddToCard extends StatefulWidget {
  const AddToCard({super.key});

  @override
  State<AddToCard> createState() => _AddToCardState();
}

class _AddToCardState extends State<AddToCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Add New Card")),
        backgroundColor: Colors.white,
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                height: 250,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  color: Colors.blue,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Mocard",
                        style: TextStyle(color: Colors.white, fontSize: 15)),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Card Holder name",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        Text(
                          "expiry date",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Form(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Card Name",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                      decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  )),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Card number",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          label: Text("CVV"),
                        ),
                      )),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          child: TextFormField(
                        decoration: InputDecoration(
                            label: Text("Expiry Date"),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            prefixIcon: Padding(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: Icon(Icons.calendar_month),
                            )),
                      ))
                    ],
                  ),
                ],
              )),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("Add"),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    minimumSize: Size(650, 50)),
              )
            ],
          ),
        ));
  }
}
