import 'package:get/get.dart';
import '../models/employee.dart';
import '../services/api_service.dart';

class EmployeeController extends GetxController {
  var employees = <Employee>[].obs;
  var isLoading = true.obs;
  var isError = false.obs;

  @override
  void onInit() {
    fetchEmployees();
    super.onInit();
  }

  void fetchEmployees() async {
    try {
      isLoading(true);
      var employeeList = await ApiService.fetchEmployees();
      employees.assignAll(employeeList);
    } catch (e) {
      isError(true);
    } finally {
      isLoading(false);
    }
  }
}
