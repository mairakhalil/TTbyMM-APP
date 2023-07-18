import 'package:booking_calendar/booking_calendar.dart';
import 'package:flutter/material.dart';

class Calander extends StatefulWidget {
  const Calander({super.key});

  @override
  State<Calander> createState() => _CalanderState();
}

class _CalanderState extends State<Calander> {
   
  final now = DateTime.now();
   late BookingService mockBookingService;

  @override
  void initState() {
    super.initState();
    // DateTime.now().startOfDay
    // DateTime.now().endOfDay
    mockBookingService = BookingService(
        serviceName: 'Mock Service',
        serviceDuration: 60,
        bookingEnd: DateTime(now.year, now.month, now.day, 18, 0),
        bookingStart: DateTime(now.year, now.month, now.day, 9, 0));
  }

  Stream<dynamic> getBookingStreamMock(
      {required DateTime end, required DateTime start}) {
    return Stream.value([]);
  }

  Future<dynamic> uploadBookingMock(
      { required BookingService newBooking}) async {
    await Future.delayed(const Duration(seconds: 1));
    converted.add(DateTimeRange(
        start: newBooking.bookingStart, end: newBooking.bookingEnd));
  }

  List<DateTimeRange> converted = [];

  List<DateTimeRange> convertStreamResultMock({dynamic streamResult}) {
    ///here you can parse the streamresult and convert to [List<DateTimeRange>]
    DateTime first = now;
    DateTime second = now.add(const Duration(minutes: 55));
    DateTime third = now.subtract(const Duration(minutes: 240));
    DateTime fourth = now.subtract(const Duration(minutes: 500));
    converted
        .add(DateTimeRange(start: first, end: now.add(const Duration(minutes: 30))));
    converted.add(
        DateTimeRange(start: second, end: second.add(const Duration(minutes: 23))));
    converted.add(
        DateTimeRange(start: third, end: third.add(const Duration(minutes: 15))));
    converted.add(
        DateTimeRange(start: fourth, end: fourth.add(const Duration(minutes: 50))));
    return converted;
  }
  
  @override
  Widget build(BuildContext context) {
   return BookingCalendar(
   
                bookingService: mockBookingService,
                convertStreamResultToDateTimeRanges: convertStreamResultMock,
                getBookingStream: getBookingStreamMock,
                uploadBooking: uploadBookingMock,
      
        
              );
   
  }
}


