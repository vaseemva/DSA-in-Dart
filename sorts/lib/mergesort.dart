mSort(List<int>arr,List<int>temp,int high,int low){
  if (low<high) {
    int mid=(low+high)~/2;
    mSort(arr, temp, mid, low);
    mSort(arr, temp, high, mid+1);
    mMerge(arr, temp, high, low, mid);
  }
}
mMerge(List<int>arr,List<int>temp,int high,int low,int mid){
  for (var i = 0; i < arr.length; i++) {
    temp[i]=arr[i];
  }
int i=low;
int j=mid+1;
int k=low;

while(i<=mid&&j<=high){
  if (temp[i]<=temp[j]) {
    arr[k]=temp[i];
    i++;
  } else {
    arr[k]=temp[j];
    j++;
  }
  k++;
}
while (i<=mid) {
  arr[k]=temp[i];
  i++;
  k++;
}

}