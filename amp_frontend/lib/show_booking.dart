import 'package:flutter/material.dart';

import 'api_caller.dart';
import 'create_booking.dart';

class ShowBooking extends StatefulWidget {
  const ShowBooking({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<ShowBooking> createState() => _ShowBookingState();
}

class _ShowBookingState extends State<ShowBooking> {
  List<String> stringList = ["ham", "cheese", "beef", "hulemibela"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.grey, //change your color here
        ),
        title: Text(
          'See your previous bookings',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 22,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.only(
          left: 16.0,
          right: 16.0,
        ),
        child: Container(
          child: Container(
            padding: EdgeInsets.only(top: 8.0),
            color: Colors.white,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: stringList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: 16.0),
                  child: InkWell(
                    onTap: () {
                      
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.green[50],
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Name of the Service",
                                style: TextStyle(
                                  color: Colors.deepOrange,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                  letterSpacing: 1,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Name of the Service Giver",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.black38,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  letterSpacing: 1,
                                ),
                              ),
                              SizedBox(height: 10),
                              
                              SizedBox(height: 10),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 50,
                                    width: 5,
                                    color: Colors.green,
                                  ),
                                  SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Date - 2021-09-23",
                                        style: TextStyle(
                                          color: Colors.cyan,
                                          fontFamily: 'OpenSans',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          letterSpacing: 1.5,
                                        ),
                                      ),
                                      Text(
                                        "Time - 07:00",
                                        style: TextStyle(
                                          color: Colors.cyanAccent,
                                          fontFamily: 'OpenSans',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          letterSpacing: 1.5,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.cyan,
        label: Text("Add Booking"),
        icon: Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => CreateBooking(),
            ),
          );
        },
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
