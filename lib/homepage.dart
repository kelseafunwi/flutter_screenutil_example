import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Responsive UI Example",
          style: TextStyle(fontSize: 18.sp), // Scaled font
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.w), // Scaled padding
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Responsive Box
            Container(
              height: 150.h, // Scaled height
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(12.r), // Scaled radius
              ),
              child: Center(
                child: Text(
                  "I'm responsive!",
                  style: TextStyle(
                    fontSize: 20.sp, // Scaled font
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.h), // Scaled spacing
            // Row Example
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 100.h,
                    color: Colors.red,
                    child: Center(
                      child: Text(
                        "Left Box",
                        style: TextStyle(fontSize: 16.sp, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10.w),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 100.h,
                    color: Colors.green,
                    child: Center(
                      child: Text(
                        "Right Box",
                        style: TextStyle(fontSize: 16.sp, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20.h),

            // Responsive Button
            SizedBox(
              height: 50.h,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Press Me", style: TextStyle(fontSize: 16.sp)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
