import 'package:flutter/material.dart';
import 'package:setap/home.dart';

class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {

  final TextEditingController emailController = TextEditingController();
  final TextEditingController cardInfoController = TextEditingController();
  final TextEditingController cvcController = TextEditingController();
  final TextEditingController expiryDateController = TextEditingController();
  final TextEditingController cardNameController = TextEditingController();
  final TextEditingController countryController = TextEditingController();
  final TextEditingController numberController = TextEditingController();

  String dropdownValue = '+44'; // Default value for dropdown


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true, // This makes the AppBar completely transparent
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.white, // replace with your first color
              child: Center(
                child: Image.asset('assets/logo.png'), // replace with your logo path
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Color(0xff331f46), // replace with your second color
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Email', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: TextField(
                        controller: emailController,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Example@gmail.com',
                        ),
                      ),
                    ),
                    Text('Name on Card', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: TextField(
                        controller: cardInfoController,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Marlin Johnson',
                        ),
                      ),
                    ),
                    Text('Card Information', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: TextField(
                        controller: cardNameController,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Card Number',
                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Container(
                              height: 15.0, // adjust the height as needed
                              width: 15.0, // adjust the width as needed
                              child: Image.asset('assets/card_icon.png'), // replace with your icon path
                            ),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 5, top: 10, bottom: 10),
                            child: TextField(
                              controller: expiryDateController,
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                hintText: 'MM/YY',
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5, top: 10, bottom: 10),
                            child: TextField(
                              controller: cvcController,
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                hintText: 'CVC',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    // After 'Card Information' TextField
                    // After 'Card Information' TextField
                    Text('Phone Number', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0), // Adjust the right padding as needed
                            child: Container(
                              color: Colors.white, // Set the background color to white
                              child: DropdownButton<String>(
                                value: dropdownValue,
                                icon: const Icon(Icons.arrow_downward),
                                iconSize: 24,
                                elevation: 16,
                                style: const TextStyle(color: Colors.black),
                                underline: Container(
                                  height: 2,
                                  color: Colors.white,
                                ),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownValue = newValue!;
                                  });
                                },
                                items: <String>['+1', '+91', '+44', '+61', '+81', '+88', '+27']
                                    .map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                          Expanded(
                            child: TextField(
                              controller: numberController,
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // ...
                    // ...
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(), // Empty container to push the text to the right
                        Center(
                          child: Text(
                            'Total Payable Amount: \$100', // Replace with your variable
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 35, // Adjust the size as needed
                            ),
                          ),
                        ),
                        Container(), // Empty container to balance the row
                      ],
                    ),
                    SizedBox(height: 40), // Add some spacing between the text and the button
                    MaterialButton(
                      onPressed: () {
                        // Handle payment logic here
                      },
                      color: Color(0xffc58fff),
                      child: Text(
                        'Pay Now',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      height: 60, // Increase the height of the button
                      minWidth: double.infinity, // Make the button take up the full width
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
}