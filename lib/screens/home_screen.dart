import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/employee_controller.dart';
import 'employee_details_screen.dart';

class HomeScreen extends StatelessWidget {
  final EmployeeController employeeController = Get.put(EmployeeController());

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        title: const Text('Employee Management'),
        actions: [

          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () => employeeController.fetchEmployees(),
          ),
        ],
      ),
      body: Obx(() {

        if (employeeController.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        } else if (employeeController.isError.value) {
          return const Center(child: Text('Failed to load data'));
        } else {
          return ListView.builder(
            itemCount: employeeController.employees.length,
            itemBuilder: (context, index) {
              final employee = employeeController.employees[index];
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(employee.avatar),
                ),
                title: Text(employee.name),
                // Replacing position with emailId or another available field
                subtitle: Text(employee.emailId),  // Use emailId, mobile, etc.
                onTap: () => Get.to(EmployeeDetailsScreen(employee: employee)),
              );
            },
          );
        }
      }),
    );
  }
}
