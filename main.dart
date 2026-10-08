import 'dart:io';

void main() {
  double price = 0;
  int quantity = 0;
  double total = 0;

  while (true) {
    //Show pizza prices
    print("Pizza Price: Small: 5 USD, Medium: 7 USD, Large: 10 USD");

    //Ask for pizza size
    print("Please enter your pizza size (small, medium, or large): ");
    String? size = stdin.readLineSync();

    switch (size) {
      case 'small':
        price = 5;
        break;
      case 'medium':
        price = 7;
        break;
      case 'large':
        price = 10;
        break;
      default:
        print("Invalid pizza size! Please select small, medium, or large.");
        continue;
    }

    //Ask for quantity
    while (true) {
      print("How many $size pizzas do you want?");
      String? input = stdin.readLineSync();

      quantity = int.tryParse(input ?? '') ?? 0;

      if (quantity > 0) {
        break;
      }

      print("Invalid quantity! Please enter a valid number.");
    }

    total = price * quantity;
    print("Your Total Payment is: ${total.toStringAsFixed(0)} USD");

    break;
  }
}
