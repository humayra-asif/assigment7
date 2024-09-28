

void main () {

//Q.1: Create a list of names and print all names using list.
List<String> names = ["huma","john","sara","alice","rismsha"];
for (var i = 0; i < names.length; i++) {
  print(names[i]);
}

///Q.2: Create an empty list of type string called days. Use the add method to add names of 7 days and print all days.

List<String> days=[];
 days.add('monday');
 days.add('tuesday');
 days.add('wednesday');
  days.add('thursday');
 days.add('friday');
 days.add('saturday');
 days.add('sunday');

for (var day in days) {
  print('Day of the week: $day');
}

//Q.3: Create a list of Days and remove one by one from the end of list.
List day1 = ['monday',"tuesday","wednesday","thursday","saturday","sunday"];
day1.removeAt(day1.length - 1); 
print(day1);
day1.removeAt(day1.length - 1); 
print(day1);
day1.removeAt(day1.length - 1); 
print(day1);
day1.removeAt(day1.length - 1); 
print(day1);
day1.removeAt(day1.length - 1); 
print(day1);
day1.removeAt(day1.length - 1); 
print(day1); 

//Q.4: Create a list of numbers & write a program to get the smallest & greatest number from a list



  List<int> numbers = [34, 78, 12, 99, 45, 7, 23, 56, 11, 89];

  int smallest = numbers[0];
  int greatest = numbers[0];

  for (int number in numbers) {
    if (number < smallest) {
      smallest = number;
    }
    if (number > greatest) {
      greatest = number;
    }
  }

  print('Smallest number: $smallest');
  print('Greatest number: $greatest');


///Q.5: Create a map with name, phone keys and store some values to it. Use where to find all keys that have length 4.


  Map<String, String> contactInfo = {
    'John': '1234',
    'Mike': '5678',
    'Paul': '9012',
    'Anna': '3456',
    'Kate': '7890',
    'Amy': '1357'
  };

  
  var keysWithLength4 = contactInfo.keys.where((key) => key.length == 4);

  print("Keys with length 4: $keysWithLength4");
  
  /* Q.6: Create Map variable name world then inside it create countries Map, 
  Key will be the name country & country value will have another map having
   capitalCity, currency and language to it. by using any country key print 
   all the value of Capital & Currency. */

  
  
  Map<String, Map<String, String>> world = {
    'USA': {
      'capitalCity': 'Washington, D.C.',
      'currency': 'USD',
      'language': 'English',
    },
    'Japan': {
      'capitalCity': 'Tokyo',
      'currency': 'Yen',
      'language': 'Japanese',
    },
    'France': {
      'capitalCity': 'Paris',
      'currency': 'Euro',
      'language': 'French',
    },
    'India': {
      'capitalCity': 'New Delhi',
      'currency': 'INR',
      'language': 'Hindi',
    },
  };

  
  String countryKey = 'Japan';
  Map<String, String>? countryDetails = world[countryKey];

  if (countryDetails != null) {
    print('Country: $countryKey');
    print('Capital City: ${countryDetails['capitalCity']}');
    print('Currency: ${countryDetails['currency']}');
  } else {
    print('Country not found.');
  }


  /* Check if "fri" exist in expanses; if exist change it's value to 
  5000.0 otherwise add 'fri' to expenses and set its value to 5000.0 then print expenses
 */

  Map<String, double> expenses = {
    'sun': 3000.0,
    'mon': 3000.0,
    'tue': 3234.0,
  };

  
  if (expenses.containsKey('fri')) {
    
    expenses['fri'] = 5000.0;
  } else {
    
    expenses['fri'] = 5000.0;
  }

  
  print(expenses);

////Q.8: remove all false values from below list by using removeWhere or retainWhere property.

List<Map<String, dynamic>> usersEligibility = [
{'name': 'John', 'eligible': true},
{'name': 'Alice', 'eligible': false},
{'name': 'Mike', 'eligible': true},
{'name': 'Sarah', 'eligible': true},
{'name': 'Tom', 'eligible': false},
];
  
  
  usersEligibility.removeWhere((user) => user['eligible'] == false);

  print(usersEligibility);

///Q.9: Given a list of integers, write a dart code that returns the maximum value from the list.


  List<int> numbers2 = [10, 45, 32, 89, 7, 65, 23];
  
  int maxValue = numbers[0];
  
  for (int number in numbers2) {
    if (number > maxValue) {
      maxValue = number;
    }
  }
  
  print('Maximum value: $maxValue');
  
/*   Q.10: Write a Dart code that takes in a list of strings and removes any duplicate 
  elements, returning a new list without duplicates. The order of elements in the new 
  list should be the same as in the original list. */

  List<String> strings = ['apple', 'banana', 'apple', 'cherry', 'banana', 'orange'];
  
  List<String> uniqueStrings = [];
  
  for (String string in strings) {
    if (!uniqueStrings.contains(string)) {
      uniqueStrings.add(string);
    }
 }
  print(uniqueStrings);

//Q 11: Write a Dart code that takes in a list and an integer n as parameters. 
//The program should print a new list containing the first n elements from the original list.

List integer=[10,34,789,344,90,10,89];
int n = 4;
List newlist1 =integer.sublist(0,n);
print(newlist1);

//Q.12: Write a Dart code that takes in a list of strings and prints a new list with 
//the elements in reverse order. The original list should remain unchanged.

List names1=['huma','jon','sara','mike','alice','rosey'];
print(names1);
var newname2= names1.reversed;
print(newname2);


//Q.14:Implement Dart code to print the first 10 natural numbers in reverse order using a while loop

  int N =10;
  while (N>0) {
    print(N);
    N--;
    
  }

//Q.15: Implement a Dart code that uses the where() method to filter out negative numbers from a 
//list of integers. The program should take in the original list as a parameter and print a new
//list containing only the positive numbers.


  List<int> integer1 = [10, -4, 34, 89, -89, -2, 56, 23, -10, -11, 44];
  integer1.sort();
print(integer1);
var positive = integer1.where((number)=> number >=0);
print(positive);


/* Q.16: Implement a Dart code that uses the where() method
 to filter out odd numbers from a list of integers. The program should
 take in the original list as a parameter and print a new list containing only the even numbers.*/

List<int> originalList = [10, 15, 22, 33, 44, 55, 60, 71, 82];
var oddnumber=originalList.where((number)=>number%2==0);
print(oddnumber);


/* Q.17: Given a list of integers, write a Dart code that uses the map() method to 
create a new list with each value squared. The program should take in the original 
list as a parameter and print the new list.*/

  List<int> numbers3 = [1, 2, 3, 4, 5]; 
  List<int> squaredNumbers = numbers3.map((n) => n * n).toList(); 

  print(squaredNumbers); 


//Q18;Write a Dart program to calculate the sum of odd numbers from 1 to 50 using a do-while loop.

int add =0;
int num=1;
do {
  if(num % 2!=0)
  {
    add+=num;
  }num++;

  
  
} while (num<=50);
print("Sum of odd numbers from 1 to 50: $add");


/* Q.19: Given a map representing a product with keys "name", "price", and "quantity", 
write Dart code to check if the product is in stock. If the quantity is greater than 0,
 print "In stock", otherwise print "Out of stock".

 */


List<Map<String, dynamic>> products = [
    {'name': 'Laptop', 'price': 1500, 'quantity': 5},
    {'name': 'Smartphone', 'price': 800, 'quantity': 0},
    {'name': 'Tablet', 'price': 300, 'quantity': 10},
  ];

for (var product in products) {
  if (product['quantity']>0){
    print("${product['name']} is in stock");}
    else {
    print("${product['name']} is out of stock");}
  
}
/* Q.20: Create a map named "car" with the following key-value pairs: 
"brand" as "Toyota", "color" as "Red", "isSedan" as true. Write Dart
 code to check if the car is a sedan and red in color. Print "Match"
  if both conditions are true, otherwise print "No match". */


  Map<String, dynamic> car = {
    'brand': 'Toyota',
    'color': 'Red',
    'isSedan': true,
  };

  if (car['isSedan'] == true && car['color'] == 'Red') {
    print('Match');
  } else {
    print('No match');
  }

/* 22: Given a map representing a shopping cart with keys as product names and values
 as quantities, write Dart code to check if a product named "Apple" exists in the cart. 
 Print "Product found" if it exists, otherwise print "Product not found". */


  Map<String, int> shoppingCart = {
    'Banana': 3,
    'Apple': 5,
    'Orange': 2,
  };

  if (shoppingCart.containsKey('Apple')) {
    print('Product found');
  } else {
    print('Product not found');
  }






}




