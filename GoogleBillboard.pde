public final static String e = "2.718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059";  
public void setup()  
{     
    noLoop(); 
    for(int a =0;a<e.length()-10;a++)
    {
     String digits = e.substring(2+a,12+a);
     double dNum = Double.parseDouble(digits);
     if(isPrime(dNum) == true)
     {
       System.out.println(dNum);
       break;
     }
    }
      
}  
public void draw()  
{   
  
}  
public boolean isPrime(double dNum)  
{   
   if(dNum <=1)
   {
   return false;
   }
   for(int a = 2;a <= Math.sqrt(dNum);a++)
     {
       if(dNum % a ==0)
        {
           return false;
         }
      }
    return true; 
}
//2-12, 6-16,24-34,100-110 Substrings for each
