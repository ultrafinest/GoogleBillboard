public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
public void setup()  
{ 
  int start = 2; 
  int end = 12; 
  String digits = e.substring(start, end);
  double dNum = Double.parseDouble(digits);
  while(end <= e.length() && isPrime(dNum) == false){
    start++;
    end++;
    digits = e.substring(start, end);
    dNum = Double.parseDouble(digits);
  }
  if(isPrime(dNum) == true){
    System.out.println(isPrime(dNum));
    System.out.println("The prime number is " + dNum);
  }
    
}  

public boolean isPrime(double dNum)  
{   
  int factors = 0; 
  if(dNum < 2)
    return false;
  for(int i = 2; i <= Math.sqrt(dNum); i++)
    if(dNum % i == 0)
      factors++;
  if(factors > 0)
    return false;
   return true;  
} 
