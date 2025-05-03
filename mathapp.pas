program MathApp;
uses
  MathUtils;

var
  number, exp, result: Integer;

begin
  WriteLn('Advanced Math Functions');
  
  Write('Enter a number: ');
  ReadLn(number);
  
  Write('Enter an exponent: ');
  ReadLn(exp);
  
  result := Power(number, exp);
  WriteLn(number, ' raised to power ', exp, ' = ', result);
  
  result := Factorial(number);
  WriteLn('Factorial of ', number, ' = ', result);
  
  if IsPrime(number) then
    WriteLn(number, ' is a prime number')
  else
    WriteLn(number, ' is not a prime number');
    
  ReadLn;
end. 