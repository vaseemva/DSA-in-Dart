List bubbleSort(List<int> list){
  
for (var i = 0; i < list.length-1; i++) {
  bool isSwapped=false;
  for (var j = 0; j < list.length-i-1; j++) {
    if (list[j]>list[j+1]) {
      var temp=list[j];
      list[j]=list[j+1];
      list[j+1]=temp;
      isSwapped=true;
    }
  }
  if (isSwapped==false) {
    break;
  }
}
return list;
}