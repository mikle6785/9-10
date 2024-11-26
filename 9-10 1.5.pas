program ArrayManipulation;

const
  MAX_SIZE = 100;

var
  arr1, arr2: array[1..MAX_SIZE] of Integer;
  i, size1, size2: Integer;
  maxIndex, minIndex: Integer;
  hasMultipleOfFive: Boolean;

begin3


  // Ввод первого массива
  Write('Введите размер первого массива: ');
  ReadLn(size1);
  WriteLn('Введите элементы первого массива:');
  for i := 1 to size1 do
  begin
    Read(arr1[i]);
  end;

  // Ввод второго массива
  Write('Введите размер второго массива: ');
  ReadLn(size2);
  WriteLn('Введите элементы второго массива:');
  for i := 1 to size2 do
  begin
    Read(arr2[i]);
  end;

  // Обработка первого массива
  hasMultipleOfFive := False;
  maxIndex := 1;
  
  for i := 1 to size1 do
  begin
    if (arr1[i] mod 5 = 0) and not hasMultipleOfFive then
    begin
      hasMultipleOfFive := True;
    end;
    
    if arr1[i] > arr1[maxIndex] then
      maxIndex := i;
  end;

  if hasMultipleOfFive then
    arr1[maxIndex] := 0;

  // Обработка второго массива
  minIndex := 1;
  
  for i := 1 to size2 do
  begin
    if arr2[i] < arr2[minIndex] then
      minIndex := i;
  end;

  for i := minIndex + 1 to size2 do
  begin
    arr2[i] := arr2[i] * 2;
  end;

  // Вывод результатов
  WriteLn('Первый массив после обработки:');
  for i := 1 to size1 do
  begin
    Write(arr1[i], ' ');
  end;
  WriteLn;

  WriteLn('Второй массив после обработки:');
  for i := 1 to size2 do
  begin
    Write(arr2[i], ' ');
  end;
  WriteLn;

  ReadLn;
end.