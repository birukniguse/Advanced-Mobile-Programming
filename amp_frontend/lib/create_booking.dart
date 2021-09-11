import 'package:flutter/material.dart';

class CreateBooking extends StatefulWidget {
  @override
  _CreateBookingState createState() => _CreateBookingState();
}

class _CreateBookingState extends State<CreateBooking> {
  String? dropdownvalue = 'Apple';
  String? dropdownvalue2 = 'Apple';
  var items = [
    'Apple',
    'Banana',
    'Grapes',
    'Orange',
    'watermelon',
    'Pineapple'
  ];

  var giversItems = [
    'Apple',
    'Banana',
    'Grapes',
    'Orange',
    'watermelon',
    'Pineapple'
  ];

  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedStartTime = TimeOfDay.now();
  TimeOfDay selectedEndTime = TimeOfDay.now();

  _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2050),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        // textControllerDate.text = DateFormat.yMMMMd().format(selectedDate);
      });
    }
  }

  _selectStartTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedStartTime,
    );
    if (picked != null && picked != selectedStartTime) {
      setState(() {
        selectedStartTime = picked;
        // textControllerStartTime.text = selectedStartTime.format(context);
      });
    } else {
      setState(() {
        // textControllerStartTime.text = selectedStartTime.format(context);
      });
    }
  }

  _selectEndTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedEndTime,
    );
    if (picked != null && picked != selectedEndTime) {
      setState(() {
        selectedEndTime = picked;
        // textControllerEndTime.text = selectedEndTime.format(context);
      });
    } else {
      setState(() {
        // textControllerEndTime.text = selectedEndTime.format(context);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.grey, //change your color here
        ),
        title: Text(
          'Book Appointment',
          style: TextStyle(
            color: Colors.blueAccent,
            fontSize: 22,
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.white,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'You can add the service giver and the time and date of appointment on this page',
                      style: TextStyle(
                        color: Colors.black87,
                        fontFamily: 'Raleway',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.5,
                      ),
                    ),
                    SizedBox(height: 16.0),
                    DropdownButton(hint: Text("Service list"),
                      value: dropdownvalue,
                      icon: Icon(Icons.keyboard_arrow_down),
                      items: items.map((String items) {
                        return DropdownMenuItem(
                            value: items, child: Text(items));
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue;
                        });
                      },
                    ),
                    DropdownButton(hint: Text("Service givers list"),
                      value: dropdownvalue2,
                      icon: Icon(Icons.keyboard_arrow_down),
                      items: giversItems.map((String items) {
                        return DropdownMenuItem(
                            value: items, child: Text(items));
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue2 = newValue;
                        });
                      },
                    ),
                    _textContent,
                    TextField(
                      cursorColor: Colors.blueAccent,
                      // controller: textControllerDate,
                      textCapitalization: TextCapitalization.characters,
                      onTap: () => _selectDate(context),
                      readOnly: true,
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.5,
                      ),
                    ),
                    _startTimeText,
                    SizedBox(height: 10),
                    TextField(
                      cursorColor: Colors.blueAccent,
                      // controller: textControllerStartTime,
                      onTap: () => _selectStartTime(context),
                      readOnly: true,
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.5,
                      ),
                      decoration: new InputDecoration(
                        contentPadding: EdgeInsets.all(16),
                        hintText: 'eg: 09:30 AM',
                      ),
                    ),
                    SizedBox(height: 10),
                    _endTimeText,
                    SizedBox(height: 10),
                    TextField(
                      cursorColor: Colors.amber,
                      // controller: Tex,
                      onTap: () => _selectEndTime(context),
                      readOnly: true,
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.5,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: double.maxFinite,
                      child: RaisedButton(
                        onPressed: () {},
                        elevation: 0,
                        focusElevation: 0,
                        highlightElevation: 0,
                        color: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                            padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                            child: SizedBox(
                              height: 28,
                              width: 28,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                valueColor: new AlwaysStoppedAnimation<Color>(
                                    Colors.white),
                              ),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _textContent = RichText(
    text: TextSpan(
      text: 'Select Date',
      style: TextStyle(
        color: Colors.blueAccent,
        fontFamily: 'Raleway',
        fontSize: 20,
        fontWeight: FontWeight.bold,
        letterSpacing: 1,
      ),
      children: <TextSpan>[
        TextSpan(
          text: '*',
          style: TextStyle(
            color: Colors.red,
            fontSize: 28,
          ),
        ),
      ],
    ),
  );

  Widget _startTimeText = RichText(
    text: TextSpan(
      text: 'Start Time',
      style: TextStyle(
        color: Colors.blueAccent,
        fontFamily: 'Raleway',
        fontSize: 20,
        fontWeight: FontWeight.bold,
        letterSpacing: 1,
      ),
      children: <TextSpan>[
        TextSpan(
          text: '*',
          style: TextStyle(
            color: Colors.red,
            fontSize: 28,
          ),
        ),
      ],
    ),
  );
  Widget _endTimeText = RichText(
    text: TextSpan(
      text: 'End Time',
      style: TextStyle(
        color: Colors.cyan,
        fontFamily: 'Raleway',
        fontSize: 20,
        fontWeight: FontWeight.bold,
        letterSpacing: 1,
      ),
      children: <TextSpan>[
        TextSpan(
          text: '*',
          style: TextStyle(
            color: Colors.red,
            fontSize: 28,
          ),
        ),
      ],
    ),
  );
}
