import 'dart:io';

void main() {
  //Show pizza prices
  print("Pizza Price: Small: 5 USD, Medium: 7 USD, Large: 10 USD");

  //Ask for pizza size
  print("Please enter your pizza size (small, medium, or large): ");
  String? size = stdin.readLineSync();

  //Ask for quantity
  print("How many pizzas do you want of pizza_size?");
  int quantity = int.parse(stdin.readLineSync()!);

  int price;

  if (size == 'small') {
    price = 5;
  } else if (size == 'medium') {
    price = 7;
  } else if (size == 'large') {
    price = 10;
  } else {
    print("Invalid pizza size!");
    return;
  }

  int total = price * quantity;
  print("Your Total Payment is: $total USD");
}
