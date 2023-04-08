int secondLargest(List<int>list){
  int largest=list[0];
  int secondLargest=list[0];
  for (var i = 0; i < list.length; i++) {
    if(list[i]>largest){
      secondLargest=largest;
      largest=list[i];
    }else if(list[i]>secondLargest&&list[i]!=largest){
      secondLargest =list[i];
    }
  }
  return secondLargest;
}