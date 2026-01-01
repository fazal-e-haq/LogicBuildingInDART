void main() {
  //  T  a  s  k
  // Product Inventory Merger

  List<Map<String, dynamic>> listA = [
    {"id": 1, "name": "Mouse", "price": 500},
    {"id": 2, "name": "Keyboard", "price": 1500},
    {"id": 3, "name": "Monitor", "price": 20000},
  ];

  List<Map<String, dynamic>> listB = [
    {"id": 2, "name": "Keyboard", "price": 1400},
    {"id": 4, "name": "Headphones", "price": 3000},
  ];

  List<Map<String, dynamic>> myList = [];
  myList.addAll(listA);
  myList.addAll(listB);
  Map<int, Map<String, dynamic>> mergedMap = {};

  for (var item in [...listA, ...listB]) {
    int id = item["id"];

    if (!mergedMap.containsKey(id)) {
      mergedMap[id] = item;
    } else {
      if (item["price"] < mergedMap[id]!["price"]) {
        mergedMap[id] = item;
      }
    }
  }

  List<Map<String, dynamic>> result = mergedMap.values.toList();

  result.sort((a, b) => a["id"].compareTo(b["id"]));

  print(result);
}
