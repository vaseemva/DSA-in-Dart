int binarySearch(List<int> list,int target){
  int low=0;
  int high=list.length-1;
  while (low<=high) {
    int mid=(low+high)~/2;
    if (list[mid]==target) {
      return mid;
    }
    if (list[mid]<target) {
      low=mid+1;
    } else {
      high=mid-1;
    }
  }
  return-1;
}