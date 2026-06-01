void greeting([String? name]) {
  print("Hello, $name! Welcome to Dart programming.");
}

void setDimensions({int width = 0, int height = 0}) {
  print("Width: $width, Height: $height");
}

void bookTitle(String title, {String? genre}) {
  print("Title: $title, Genre: $genre!");
}

T sum<T extends num>(T a, T b) {
  return (a + b) as T;
}

List<T> returnback<T>(List<T> input) {
  return input;
}

(String, int, dynamic) userInfo(String name, int age, String gender) {
  return ("Alice", 25, gender);
}

void main() {
  greeting("Alice");
  greeting();
  setDimensions(width: 100, height: 200);
  setDimensions(height: 150);
  // bookTitle("The Great Gatsby", genre: "Classic");
  bookTitle("Mystery Novel", genre: "Classic");
  print(sum(5, 10));
  print(BigInt.one + BigInt.two);
  print(sum(3.5, 4.5));

  print(returnback([1, 2, 3, "t"]));
  print(returnback(["a", "b", "c"]));

  dynamic info = userInfo("Alice", 25, "Female");
  print("Name: ${info.$1}, Age: ${info.$2}, Gender: ${info.$3}");

  var sums = (int a, int b) => a + b;
  print(sums(5, 10));
}
