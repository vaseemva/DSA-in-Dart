int maximumDifference(List<int>arr){
  int maxDiff=0;
  for (var i = 0; i < arr.length; i++) {
    for (var j = i+1; j < arr.length; j++) {
      int diff=(arr[i]-arr[j]).abs();
      if (diff>maxDiff) {
        maxDiff=diff;
      }
    }
  }
  return maxDiff;
}