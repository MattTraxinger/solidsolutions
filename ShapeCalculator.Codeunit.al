codeunit 50006 ShapeCalculator
{
    var
        Shape: Record Shape;
        Result: Decimal;

    procedure SetShapes(var ShapesToCalculate: Record Shape)
    begin
        Shape := ShapesToCalculate;
    end;

    procedure GetShapes(var ShapesToCalculate: Record Shape)
    begin
        ShapesToCalculate := Shape;
    end;

    procedure SetResult(ResultOfCalculation: Decimal)
    begin
        Result := ResultOfCalculation;
    end;

    procedure GetResult(): Decimal
    begin
        exit(Result);
    end;
}