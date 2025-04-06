import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: HomeScreen(),
//     );
//   }
// }

class HomeScreen extends StatelessWidget {
  // Function to show the bottom sheet
  void _showPhotoBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
      ),
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                'Add your best photos',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              // Subtitle
              Text(
                'Profile pictures leads to more matches',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 16),
              // Options
              _buildOption(context, Icons.photo, 'Camera roll', () {
                // Handle camera roll action
                Navigator.pop(context);
                print('Camera roll selected');
              }),
              _buildOption(context, Icons.facebook, 'Facebook', () {
                // Handle Facebook action
                Navigator.pop(context);
                print('Facebook selected');
              }),
              _buildOption(context, Icons.camera_alt, 'Instagram', () {
                // Handle Instagram action
                Navigator.pop(context);
                print('Instagram selected');
              }),
              _buildOption(context, Icons.camera, 'Take a photo', () {
                // Handle take a photo action
                Navigator.pop(context);
                print('Take a photo selected');
              }),
              SizedBox(height: 16),
            ],
          ),
        );
      },
    );
  }

  // Helper function to build each option
  Widget _buildOption(
      BuildContext context, IconData icon, String title, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8.0),
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey[300]!),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors
                  .yellow[700], // Matching the yellow color from the image
              size: 24,
            ),
            SizedBox(width: 16),
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Sheet Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _showPhotoBottomSheet(context),
          child: Text('Show Bottom Sheet'),
        ),
      ),
    );
  }
}
