program AverageMainDiagonal;
uses crt;

const
  N = 3; { розмір квадратного масиву }

var
  A: array[1..N, 1..N] of integer; { масив }
  i, sum: integer;
  avg: real;

begin
  clrscr;

  { Введення елементів масиву }
  writeln('Введіть елементи масиву:');
  for i := 1 to N do
  begin
    write('Введіть елемент A[', i, ',', i, ']: ');
    readln(A[i, i]);
  end;

  { Обчислення суми елементів на головній діагоналі }
  sum := 0;
  for i := 1 to N do
    sum := sum + A[i, i];

  { Обчислення середнього арифметичного }
  avg := sum / N;

  { Виведення результату }
  writeln('Середнє арифметичне на головній діагоналі масиву: ', avg:0:2);
  
  readln;
end.