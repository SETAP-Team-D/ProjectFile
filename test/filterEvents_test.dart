import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:setap/searchpage.dart'; 
import 'package:setap/create.dart';

void main() {
  testWidgets('Testing method filterEvents', (WidgetTester tester) async {

  List<Event> events = [
    Event(
      userID: 1.toString(),
      name: 'hello',
      date: DateTime.parse('2024-01-01'),
      time: TimeOfDay(hour: 10, minute: 0),
      description: 'test',
      location: 'portsmouth',
      ticketPrice: 10.0,
      totalPrice: 10.0,
    )
  ];

  SearchState search = SearchState();
  search.events = events;

  search.filterEvents('hello');

  expect(search.filteredEvents.length, 1); 
  expect(search.filteredEvents[0].name, 'hello');
});
}