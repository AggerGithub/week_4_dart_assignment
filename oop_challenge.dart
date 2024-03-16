// Define an interface for inventory items
abstract class InventoryItem {
  void displayInfo();
}

// Define a superclass for all inventory items
class InventoryItemBase implements InventoryItem {
  String name;
  int quantity;
  double price;

  InventoryItemBase(this.name, this.quantity, this.price);

  @override
  void displayInfo() {
    print('Name: $name, Quantity: $quantity, Price: $price');
  }
}

// Define subclasses for different types of inventory items
class Electronics extends InventoryItemBase {
  String brand;

  Electronics(String name, int quantity, double price, this.brand)
      : super(name, quantity, price);

  @override
  void displayInfo() {
    super.displayInfo();
    print('Brand: $brand');
  }
}

class Clothing extends InventoryItemBase {
  String size;

  Clothing(String name, int quantity, double price, this.size)
      : super(name, quantity, price);

  @override
  void displayInfo() {
    super.displayInfo();
    print('Size: $size');
  }
}

// Define a method to read data from a file and initialize instances of classes
List<InventoryItem> initializeFromFile(String fileName) {
  List<InventoryItem> items = [];

  // Read data from the file and initialize instances of classes
  // For demonstration purposes, we'll simulate reading from a file
  // In a real application, you would read actual data from a file
  items.add(Electronics('iPhone', 15, 999.99, 'Apple'));
  items.add(Electronics('Samsung Galaxy', 21, 799.99, 'Samsung'));
  items.add(Clothing('T-Shirt', 25, 19.99, 'Large'));
  items.add(Clothing('Jeans', 15, 39.99, 'Medium'));

  return items;
}

// Define a method that demonstrates the use of a loop to display information about all inventory items
void displayAllInventoryItems(List<InventoryItem> items) {
  print('Inventory:');
  for (var item in items) {
    item.displayInfo();
    print('-----');
  }
}

void main() {
  // Initialize instances of classes with data from a file
  List<InventoryItem> inventory = initializeFromFile('inventory.txt');

  // Display information about all inventory items in the inventory
  displayAllInventoryItems(inventory);
}