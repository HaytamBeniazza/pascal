program HelloWorld;
uses
  Math;

var
  num1, num2, result: Integer;

function Add(a, b: Integer): Integer;
begin
  Add := a + b;
end;

function Subtract(a, b: Integer): Integer;
begin
  Subtract := a - b;
end;

function Multiply(a, b: Integer): Integer;
begin
  Multiply := a * b;
end;

function Divide(a, b: Integer): Real;
begin
  if b <> 0 then
    Divide := a / b
  else
    Divide := 0;
end;

begin
  WriteLn('Simple Calculator');
  
  Write('Enter first number: ');
  ReadLn(num1);
  
  Write('Enter second number: ');
  ReadLn(num2);
  
  result := Add(num1, num2);
  WriteLn('Addition: ', result);
  
  result := Subtract(num1, num2);
  WriteLn('Subtraction: ', result);
  
  result := Multiply(num1, num2);
  WriteLn('Multiplication: ', result);
  
  WriteLn('Division: ', Divide(num1, num2):0:2);
  
  ReadLn;
end. 