import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:table_calendar/table_calendar.dart';

import 'circle_avatar.dart';
class CalenderPage extends StatelessWidget {
  const CalenderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            gradient: RadialGradient(
              center: Alignment.center,
              radius: 1.5,
              colors: [
                Colors.white,
                Color(0xFFfbf1af), // Light yellow
                Color(0xFFf9e07f),
              ],
              stops: [0.2, 0.7, 1.0],
            ),
          ),
          width: double.infinity,
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
          ),
          child: Stack(children: [
            Positioned(
            top: 383,
            left: 336,
            child: Container(
              width: 28,
              height: 28,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(
                  0xFFFEDC00,
                ),
              ),
            ),
          ),
          Positioned(
            top: 42,
            left: 53,
            child: Container(
              width: 12,
              height: 12,
              decoration: BoxDecoration(
                color: Color(
                  0xFFFEDC00,
                ),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            top: 435,
            left: 42,
            child: Container(
              width: 22,
              height: 22,
              decoration: BoxDecoration(
                color: Color(
                  0xFFFEDC00,
                ),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            top: 72,
            left: 330,
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                color: Color(
                  0xFFFEDC00,
                ),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            top: 25,
            left: 40,
            child: SvgPicture.asset(
              'assets/Group 2.svg',
            ),
          ),
          Positioned(
            top: 75,
            left: 23,
            child: SvgPicture.asset(
              'assets/Frame (1).svg',
            ),
          ),
          Column(children: [
              SizedBox(height: 90),
          Center(
            child: SvgPicture.asset(
              'assets/Group (4).svg',
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Add your best photos",
            style: TextStyle(fontFamily: "WideTrial"),
          ),
          SizedBox(height: 20),
          Text(
            "Profile pictures leads to more matches",
            style: TextStyle(
              fontFamily: "New",
            ),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatarField(
                svgContent: Image(
                  image: AssetImage(
                    'assets/Mask group (2).png',
                  ),
                ),
              ),
              CircleAvatarField(
                svgContent: Image(
                  image: AssetImage(
                    'assets/Mask group (3).png',
                  ),
                ),
              ),
              CircleAvatarField(
                svgContent: SvgPicture.asset(
                  'assets/Mary.svg',
                  width: 30,
                  height: 20,
                ),
              ),
            ],
          ),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatarField(
                svgContent: SvgPicture.asset(
                  'assets/Mary.svg',
                  width: 30,
                  height: 20,
                ),
              ),
              CircleAvatarField(
                svgContent: SvgPicture.asset(
                  'assets/Mary.svg',
                  width: 30,
                  height: 20,
                ),
              ),
              CircleAvatarField(
                svgContent: SvgPicture.asset(
                  'assets/Mary.svg',
                  width: 30,
                  height: 20,
                ),
              ),
            ],
          ),
          SizedBox(height: 300),
            Container(
              height: 56,
              width: 350,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                    Color(
                      0xFFFEDC00,
                    ),
                  ),
                ),
                onPressed: () {
                  _showCalendarBottomSheet(context);

                },
                child: Text(
                  "Continue",
                  style: TextStyle(
                    fontFamily: 'WideTrial',
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
          ),
          ],
          ),
        ),
      ),
    );
  }
}
void _showCalendarBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
    ),
    builder: (context) {
      return CalendarBottomSheet();
    },
  );
}


// Widget _buildCustomOption(
//     BuildContext context, String svgPath, String title, VoidCallback onTap) {
//   return GestureDetector(
//     onTap: onTap,
//     child: Container(
//       height: 40,
//       width: double.infinity,
//       margin: EdgeInsets.symmetric(vertical: 4.0),
//       padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
//       decoration: BoxDecoration(
//         border: Border.all(color: Colors.grey[300]!),
//         borderRadius: BorderRadius.circular(15.0),
//       ),
//       child: Row(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           SvgPicture.asset(
//             svgPath,
//             color: Colors.yellow[700],
//             width: 20,
//             height: 20,
//           ),
//           SizedBox(width: 12),
//           Text(
//             title,
//             style: TextStyle(
//               fontSize: 16,
//               fontWeight: FontWeight.w500,
//             ),
//           ),
//         ],
//       ),
//     ),
//   );
// }


class CalendarBottomSheet extends StatefulWidget {
  @override
  _CalendarBottomSheetState createState() => _CalendarBottomSheetState();
}

class _CalendarBottomSheetState extends State<CalendarBottomSheet> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset("assets/Vector 9.svg"),

          Text(
            'Birthday',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 2),

          TableCalendar(

            firstDay: DateTime(1900), // Allow selection from 1900
            lastDay: DateTime(2100), // Allow selection up to 2100
            focusedDay: _focusedDay,
            selectedDayPredicate: (day) {
              return isSameDay(_selectedDay, day);
            },
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                _selectedDay = selectedDay;
                _focusedDay = focusedDay; // Update the focused day
              });
            },
            onPageChanged: (focusedDay) {
              _focusedDay = focusedDay; // Update focused day when changing months/years
            },
            calendarFormat: CalendarFormat.month, // Display in month view
            headerStyle: HeaderStyle(
              formatButtonVisible: false, // Hide format button (month/week)
              titleCentered: true,
              leftChevronIcon: Icon(Icons.chevron_left, color: Colors.black),
              rightChevronIcon: Icon(Icons.chevron_right, color: Colors.black),
            ),
            calendarStyle: CalendarStyle(
              selectedDecoration: BoxDecoration(
                color: Color(0xFFFEDC00), // Match your app's yellow theme
                shape: BoxShape.circle,
              ),
              todayDecoration: BoxDecoration(
                color: Colors.grey[300],
                shape: BoxShape.circle,
              ),
            ),
          ),
          SizedBox(height: 5),
          Container(
            height: 30,
            width: double.infinity,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  Color(0xFFFEDC00),
                ),
              ),
              onPressed: () {
                if (_selectedDay != null) {
                  // Return the selected date and close the bottom sheet
                  Navigator.pop(context, _selectedDay);
                  print('Selected date: $_selectedDay');
                } else {
                  // Optionally show a message if no date is selected
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Please select a date')),
                  );
                }
              },
              child: Text(
                'Confirm',
                style: TextStyle(
                  fontFamily: "WideTrial",
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}


