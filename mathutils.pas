unit MathUtils;

interface

function Power(Base, Exponent: Integer): Integer;
function Factorial(N: Integer): Integer;
function IsPrime(N: Integer): Boolean;

implementation

function Power(Base, Exponent: Integer): Integer;
var
  Result: Integer;
  i: Integer;
begin
  Result := 1;
  for i := 1 to Exponent do
    Result := Result * Base;
  Power := Result;
end;

function Factorial(N: Integer): Integer;
var
  Result: Integer;
  i: Integer;
begin
  Result := 1;
  for i := 2 to N do
    Result := Result * i;
  Factorial := Result;
end;

function IsPrime(N: Integer): Boolean;
var
  i: Integer;
  isPrime: Boolean;
begin
  isPrime := True;
  
  if N <= 1 then
    isPrime := False
  else if N <= 3 then
    isPrime := True
  else if (N mod 2 = 0) or (N mod 3 = 0) then
    isPrime := False
  else
  begin
    i := 5;
    while i * i <= N do
    begin
      if (N mod i = 0) or (N mod (i + 2) = 0) then
      begin
        isPrime := False;
        break;
      end;
      i := i + 6;
    end;
  end;
  
  IsPrime := isPrime;
end;

end. 