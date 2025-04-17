class Order {
  final String time;
  final String stockName;
  final String type;
  final String qty;
  final String price;
  final String orderType;

  Order({
    required this.time,
    required this.stockName,
    required this.type,
    required this.qty,
    required this.price,
    required this.orderType,
  });
}
