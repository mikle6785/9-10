program TwoDimensionalArray;

const
  ROWS = 8;
  COLS = 8;

var
  matrix: array[1..ROWS, 1..COLS] of Integer;
  resultArray: array[1..ROWS] of Integer;
  i, j, maxCount, maxValue: Integer;

begin
  // Инициализация двумерного массива случайными числами
  Randomize;
  WriteLn('Исходный двумерный массив:');
  for i := 1 to ROWS do
  begin
    for j := 1 to COLS do
    begin
      matrix[i, j] := Random(100); // Генерация случайных чисел от 0 до 99
      Write(matrix[i, j]:4);
    end;
    WriteLn;
  end;

  // Обработка каждой строки массива
  for i := 1 to ROWS do
  begin
    maxValue := matrix[i, 1];
    maxCount := 1;

    // Поиск максимального элемента и подсчет его количества
    for j := 2 to COLS do
    begin
      if matrix[i, j] > maxValue then
      begin
        maxValue := matrix[i, j];
        maxCount := 1; // Сброс счетчика, так как найден новый максимум
      end
      else if matrix[i, j] = maxValue then
      begin
        Inc(maxCount); // Увеличиваем счетчик, если нашли еще один максимум
      end;
    end;

    // Заполнение одномерного массива
    if maxCount = 1 then
      resultArray[i] := 1
    else
      resultArray[i] := -1;
  end;

  // Вывод результата
  WriteLn('Результирующий одномерный массив:');
  for i := 1 to ROWS do
  begin
    Write(resultArray[i]:4);
  end;

end.