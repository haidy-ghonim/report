//null safety
// void main() {
// String send= 'HI';
// print(send.length);
// }

//error to runtime
// void main(){
//  String email = null;
//   print(email.length);
// }

// void main() {
//    String? message = 'Hello';
//    print(message);
//    message=null;
// }

// nullable type
// void main(){
//   int? a;
//   // a= null;
//   a= 15;
//   print('a is $a.');
// }
// nullable type parameters for generics
// void main(){
//
//   List<String>aListofStrings=['one','two','three'];
//   List<String> ?aNullableListofStrings;
//   List<String ?> aListofNullableStrings=['one',null,'three'];
//
//
//   print('aListofString is $aListofStrings.');
//   print('aNullableListofString is $aNullableListofStrings.');
//   print('aListofNullableString is $aListofNullableStrings.');
// }

//null assertion operator (!)
// int ? couldReturnNullButDoesnt()=>-3;
// void main(){
//   int? couldReturnNullButIsnt=1;
//   List <int?> listThatCouldHoldNulls=[2,null,4];
//   int a= couldReturnNullButIsnt;
//   int b= listThatCouldHoldNulls.first!;// first item in the list
//   int c= couldReturnNullButDoesnt()!.abs();//absolute value
//   print('a is $a.');
//   print('b is $b.');
//   print('c is $c.');
// }
//
// //required
// int addThreeValues({
//   required int first,
// required int second,
// required int thrid,
// }) {
//   return first+ second+ thrid;
// }
// void main (){
//   final sum =addThreeValues(first: 2, second: 5,
//       thrid: 7);
//   print(sum);
// }
//
//      **********
// // null checks
// int? getLength (String? str){
//   //Add null check here
//   return str?.length;
// }
// void main (){
//   print(getLength('This is a string'));
// }
//      **********
// null checks
// int getLength(String? str) {
//   //Add null check here
//   if (str == null) {
//     throw 'value is null';
//     return 0;
//   }
//   return str.length;
// }
//
// void main() {
//   // print(getLength(null));
//   print(getLength("null"));
// }
                //      **********
import 'dart:math';

class RandomStringProvider{
  String? get value =>
      Random().nextBool()? 'A String':null;
}
    void printString (String str) => print(str);
void main (){
  final provider =      RandomStringProvider();
  final str = provider.value;
  if (str ==null){
    print('The Value is null.');
  }   else{
    print('The value is not null, so print it!');
    printString(str);
  }
}