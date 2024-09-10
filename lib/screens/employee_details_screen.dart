import 'package:flutter/material.dart';
import '../models/employee.dart';

class EmployeeDetailsScreen extends StatelessWidget {
  final Employee employee;

  EmployeeDetailsScreen({required this.employee});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(employee.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(employee.avatar),
              radius: 50,
            ),
            const SizedBox(height: 20),
            Text(
              employee.name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            // Replace `employee.position` with valid fields like `emailId`, `mobile`, etc.
            Text(
              employee.emailId,  // Showing emailId instead of position
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            Text(
              employee.mobile,  // Showing mobile number as an additional field
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            Text(
              '${employee.country}, ${employee.state}',  // Showing country and state
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
