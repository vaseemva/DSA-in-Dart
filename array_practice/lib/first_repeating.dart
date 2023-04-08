int firstRepeating(List<int>arr){
  Map<int,int>elements={};
  for (var i = 0; i < arr.length; i++) {
    if (elements.containsKey(arr[i])) {
      return arr[i];
    }else{
    elements[arr[i]]=1;
    }
  }
  return -1;
}