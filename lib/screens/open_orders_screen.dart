import 'package:flutter/material.dart';
import '../models/order_model.dart';
import '../widgets/order_card.dart';

class OpenOrdersScreen extends StatelessWidget {
  OpenOrdersScreen({Key? key}) : super(key: key);

  final List<Order> orders = [
    Order(time: '08:14:31', stockName: 'RELIANCE', type: 'Buy', qty: '50/100', price: '₹250.50', orderType: 'CNC'),
    Order(time: '08:14:31', stockName: 'MRF', type: 'Buy', qty: '1/1', price: '₹97,340.00', orderType: 'NRML'),
    Order(time: '08:14:31', stockName: 'ASIANPAINT', type: 'Buy', qty: '5/10', price: '₹3,210.20', orderType: 'NRML'),
    Order(time: '08:14:01', stockName: 'TATAMTSET', type: 'Buy', qty: '1/2', price: '₹1,200.00', orderType: 'NRML'),
  ];

  final List<String> chips = ['RELIANCE', 'ASIANPAINT'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Open Orders',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 12),
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                textStyle: const TextStyle(fontWeight: FontWeight.w600),
              ),
              onPressed: () {},
              icon: const Icon(Icons.radio_button_checked, size: 16),
              label: const Text("Cancel all"),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            // Dropdowns + small cancel all
            Row(
              children: [
                _buildDropdown("AAA002"),
                const SizedBox(width: 10),
                _buildDropdown("Lalit X"),
                const Spacer(),
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.remove_circle_outline),
                  label: const Text("Cancel all"),
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black87,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            // Search field
            TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                hintText: "Search for a stock, future, option or index",
                hintStyle: const TextStyle(fontSize: 14),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
              ),
            ),
            const SizedBox(height: 12),
            // Chips
            Align(
              alignment: Alignment.centerLeft,
              child: Wrap(
                spacing: 8,
                children: chips.map((chip) {
                  return Chip(
                    label: Text(chip),
                    backgroundColor: Colors.grey.shade200,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  );
                }).toList(),
              ),
            ),
            const SizedBox(height: 12),
            // Orders List
            Expanded(
              child: ListView.builder(
                itemCount: orders.length,
                itemBuilder: (_, index) => OrderCard(order: orders[index]),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildDropdown(String value) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(12),
      ),
      child: DropdownButton<String>(
        value: value,
        underline: const SizedBox(),
        icon: const Icon(Icons.arrow_drop_down),
        items: [value].map((val) => DropdownMenuItem(value: val, child: Text(val))).toList(),
        onChanged: (_) {},
      ),
    );
  }
}
