void main(){

  var listNo=[10,20,30,40,50,55];
  var newNo;
  // newNo=listNo.skip(2); // This method ignores the elements starting from index 0 till count and returns remaining iterable from given list.
  // newNo=listNo.every((element) => element.isEven);//This method returns a boolean depending upon whether all elements satisfies the condition or not.
  // newNo=listNo.any((element) => element.isOdd);// This method returns a boolean depending upon whether any element satisfies the condition or not.
  // newNo=listNo.take(3);  //This method returns iterable starting from index 0 till the count provided from given list.
  // newNo=listNo.followedBy([60,70,80]);//This method appends new iterables to the given list.
  // newNo=listNo.reduce((value, element) => value+element); //same as fold but it can't take any initial value.
  // newNo= listNo.fold(0, (i, j) => i+j); //This method returns a single value by iterating all elements of given list along with an initialValue
  // listNo.add(60);   // add the element at last index
  // listNo.insert(2, 25); // insert single element at particular index on list
  // listNo.removeLast();  //remove the last element
  // listNo.replaceRange(0, 3, [1,2,3,4,5,6]); // for replacing elements from given range
  // Map<int, int> newNo= listNo.asMap(); // if we want list as a map(key , value) then this method will be used
  //  var newNo=listNo.whereType<int>();  // this will be used to return all the values of mentioned type in method. Here all the int values are return.
  //  newNo= listNo.getRange(2, 4);  // it return the values of given range with inclusive mentioned index.
  //    newNo=listNo.firstWhere((element) => false);
  // print(listNo.firstWhere((element) => element>20));  // it return the first element when condition satisfied.
  // print(listNo.singleWhere((element) => element==20));  //it return the first element when condition satisfied. if multiple element satisfied the condition then error will be showed.
  var names=[];
  names.add("Java"); //add new single elements in list
  names.add("c");
  names.add("C++");
  names.add("Flutter");
  // print(names.any((e) => e.contains('cricket'))); //This method returns a boolean depending upon whether any element satisfies the condition or not.
  // print(names.any((e) => e.contains('c'))); //This method returns a boolean depending upon whether any element satisfies the condition or not.


  // names.removeAt(2);//Remove mentioned index element
  // names[1]="c#";  // Updating Particular Index Value
  // names.addAll(listNo); // add all the element at end of the index
  // names.insertAll(3, listNo);  //Insert all the elements at particular index
  // names.sublist(1,3);  // it's return sublist form staring index to last index mention in this sublist function   ,  here last element is exclusive
  // names.shuffle(); // it rearrange the order of the element.
  // var newList=names.reversed.toList(); //it rearrange the element in revers order
  // Map<int, dynamic> newList = names.asMap(); // if we want list as a map(key , value) then this method will be used
  print(newNo);
  // print("$newList");

}