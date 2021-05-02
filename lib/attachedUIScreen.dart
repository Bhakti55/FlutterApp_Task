import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class attachedUIScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: Center(
        child: Container(
          margin: EdgeInsets.all(30),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          child: Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: SingleChildScrollView(
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.chevron_left_sharp),
                          Text("Our Product",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                              fontSize: 18
                            ),),
                          Padding(padding: EdgeInsets.only(right: 20),
                          child: GestureDetector(
                            child: Text(":",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18
                              ),),
                          ))
                        ],
                      ),
                      SizedBox(height: 50,),
                      Text("Your Choice",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w400
                        ),
                      ),

                      SizedBox(height: 30),
                  Padding(padding: EdgeInsets.only(right: 20),
                    child:TextField(
                        // controller: _filter,
                          decoration: new InputDecoration(
                              prefixIcon: new Icon(Icons.search),
                              hintText: 'Search Product'
                          ))),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                              flex: 3,
                              child: Padding(
                                  padding: EdgeInsets.only(top: 50),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Top Light",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 25
                                        ),),
                                      SizedBox(height: 30,),
                                      Text("Delivery Time",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 15
                                        ),),
                                      Text("15.30",
                                        style: TextStyle(
                                            fontSize: 18
                                        ),),
                                      SizedBox(height: 30,),
                                      Text("Our Contact",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 15
                                        ),),
                                      Row(
                                        children: [
                                          Container(
                                            height: 35,
                                            width: 35,
                                            margin: EdgeInsets.only(right: 10),
                                            decoration: BoxDecoration(
                                              color: Colors.green,
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                            ),
                                            child: Center(
                                                child: Icon(Icons.phone, color: Colors.white, size: 15,)
                                            ),
                                          ),
                                          Container(
                                            height: 35,
                                            width: 35,
                                            margin: EdgeInsets.all(10),
                                            decoration: BoxDecoration(
                                              color: Colors.orange.withOpacity(0.8),
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                            ),
                                            child: Center(
                                                child: Icon(Icons.add_location, color: Colors.white, size: 15,)
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 30,),
                                      Text("Filters",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 15
                                        ),),
                                      Container(
                                          height: 35,
                                          width: 80,
                                          margin: EdgeInsets.only(top: 10),
                                          decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius: BorderRadius.all(Radius.circular(30)),
                                          ),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Icon(Icons.cloud_circle, color: Colors.white,),
                                              Text("cold",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold
                                                ),)

                                            ],
                                          )
                                      ),
                                      Container(
                                          height: 35,
                                          width: 80,
                                          margin: EdgeInsets.only(top: 10),
                                          decoration: BoxDecoration(
                                              color: Colors.orange.withOpacity(0.8),
                                            borderRadius: BorderRadius.all(Radius.circular(30)),
                                          ),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Icon(Icons.cloud_circle, color: Colors.white,),
                                              Text("warm",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold
                                                ),)

                                            ],
                                          )
                                      )
                                    ],
                                  )
                              )
                          ),

                           Expanded(
                                flex: 2,
                                child: FractionallySizedBox(
                                    alignment: Alignment.bottomRight,
                                    widthFactor: 1.4,
                                    child: Container(
                                      //color: Colors.pinkAccent,
                                      decoration: BoxDecoration(
                                        color: Colors.pinkAccent.withOpacity(0.2),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(40),
                                        ),
                                      ),
                                      child: ListView.builder(
                                          shrinkWrap: true,
                                          //padding: const EdgeInsets.all(8),
                                          itemCount: 4,
                                          itemBuilder: (BuildContext context, int index) {
                                            return Container(
                                              height: 90,
                                             // width: 50,
                                              margin: EdgeInsets.all(5),
                                              padding: EdgeInsets.all(10),
                                              //color: Colors.amber/*[colorCodes[index]]*/,
                                              decoration: BoxDecoration(
                                                color: Colors.orangeAccent.withOpacity(0.3),
                                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                              ),
                                              child: Center(child: Image.network('https://picsum.photos/250?image=9')),
                                            );
                                          }
                                      )
                                    )/*Container(
                            // color: Colors.pinkAccent,
                            height: 350,
                            decoration: BoxDecoration(
                                color: Colors.pinkAccent
                            ),
                          )*/),
                          )
                        ],
                      )
                    ],
                  )
              )
          ),
        )
      ),
    );
  }
}
