List<int>removeDuplicates(List<int>list){
  Set<int>set=Set.from(list);
  List<int>removedList=set.toList();
  return removedList;
}