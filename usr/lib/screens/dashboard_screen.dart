import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              // TODO: Implement logout functionality
              Navigator.pushReplacementNamed(context, '/login');
            },
          ),
        ],
      ),
      body: GridView.count(
        crossAxisCount: 4,
        padding: const EdgeInsets.all(16.0),
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0,
        children: [
          _buildDashboardItem(context, 'Patient Management', Icons.people),
          _buildDashboardItem(context, 'Employee Management', Icons.badge),
          _buildDashboardItem(context, 'Doctor Management', Icons.medical_services),
          _buildDashboardItem(context, 'Medicine Management', Icons.medication),
          _buildDashboardItem(context, 'Lab Test Config', Icons.science),
          _buildDashboardItem(context, 'Imaging Test Config', Icons.image),
          _buildDashboardItem(context, 'Prescription', Icons.description),
          _buildDashboardItem(context, 'Lab Test Orders', Icons.biotech),
          _buildDashboardItem(context, 'Imaging Test Orders', Icons.camera),
          _buildDashboardItem(context, 'Lab Reports', Icons.assignment),
          _buildDashboardItem(context, 'Imaging Reports', Icons.image_search),
          _buildDashboardItem(context, 'Patient Masters', Icons.folder_shared),
        ],
      ),
    );
  }

  Widget _buildDashboardItem(BuildContext context, String title, IconData icon) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        onTap: () {
          // TODO: Navigate to respective module
        },
        borderRadius: BorderRadius.circular(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 48, color: Theme.of(context).primaryColor),
            const SizedBox(height: 12),
            Text(
              title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
