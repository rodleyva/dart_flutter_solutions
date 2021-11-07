import "dart:math";
void main() {
  
  print(createDeveloper("Rod", 11.0, false));
  
  print(solvePyth(3.0,4.0));
  
  print(distance(1,2,1,5));
  
}

//#1 solution 
String createDeveloper(String name, double height, bool isNewDeveloper){
  
  var currentString = "This new developer $name is $height feet tall";
  if (isNewDeveloper) {
    currentString += "and is a new developer";
  }else{
    currentString += "and is not new developer";
  }
  
  return currentString;
  
}

//#2 solution 
double solvePyth(double a, double b){
  var value = pow(a,2) + pow(b,2);
  return sqrt(value);
}


//#3 solution 
double distance(double x1,double y1,double x2,double y2) {
  //formula 
  var distance = pow((x2-x1),2) + pow((y2-y1),2);
  return sqrt(distance);
}


