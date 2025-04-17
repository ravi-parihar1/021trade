# assignment

A  Open Orders screen built in Flutter — inspired by modern trading apps. Clean layout, rich UI components, and modular code structure.

 Features

-  **Cancel All** buttons (highlighted and minimal variants)
-  **Search bar** with hint for stock, future, option, or index
-  **Filter chips** (e.g., RELIANCE, ASIANPAINT)
-  **Order cards** with stock details (time, type, quantity, price)
-  Modern styling with rounded corners, subtle shadows, and spacing

Folder Structure

lib/ ├── main.dart # App entry point ├── models/ │ └── order_model.dart # Order data class ├── screens/ │ └── open_orders_screen.dart # Main UI screen ├── widgets/ │ └── order_card.dart # Reusable order card

Approach & Architecture
This Flutter UI follows a clean and modular approach, separating concerns for better maintainability and scalability. Here's a breakdown of how it's structured:

🔹 1. Component-Based Design
The UI is split into reusable widgets like OrderCard and helper UI elements.

Each widget is responsible for a single, clear task — e.g., OrderCard handles the layout and styling of one order.

🔹 2. Model Layer
A simple Order model (order_model.dart) defines the structure of each order's data.

This makes it easy to replace mock data with real-time data from an API later.

🔹 3. Screen-First Layout
The entire screen (open_orders_screen.dart) is designed as a single scrollable column with modular sections:

Dropdown filters

Search bar

Chips (tag filters)

Scrollable order list

🔹 4. UI Styling Consistency
Colors, padding, borders, font weights, and shadows are chosen to match the original design pixel-by-pixel.

Uses Flutter’s built-in Container, TextField, Chip, and ElevatedButton widgets, customized via properties.

🔹 5. Mock Data for Simplicity
Orders are currently hardcoded to simulate real data, making the UI testable without a backend.

Can be easily swapped with live API data or local database in future.

