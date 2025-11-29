void main (){

List num=[1,5,3,1,5,9,8];

print('before sorting $num');

 for(int i=0;i<num.length;i++){
    for(int j=i+1;j<num.length;j++){
       if(num[i]>num[j]){
    int temp =num[i];
    num[i]=num[j];
    num[j]=temp;
}
 
    }
      

 
 }
 print(num);

}