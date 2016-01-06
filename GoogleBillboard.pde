public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535"+
"47594571382178525166427427466391932003059921817413596629043572900334295260595630";
public void setup()  
{     
    noLoop(); 
    for(int a =0;a<e.length()-12;a++)
    {
     String digits = e.substring(2+a,12+a);
     double dNum = Double.parseDouble(digits);
     if(addsTo49(digits) == true)
     {
       System.out.println(digits +"adds to 49");
     }
     if(isPrime(dNum) == true)
     {
       System.out.println(dNum);
     
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
public boolean addsTo49(String num)
{
  double count = 0;
  for(int a =0;a <10;a++)
  {
    String temp = num.substring(a,a+1);
    double dTemp = Double.parseDouble(temp);
    count+=dTemp;
  }
  if(count == 49)
  {
    return true;
  }
  else
  {
    return false;
  }
}
