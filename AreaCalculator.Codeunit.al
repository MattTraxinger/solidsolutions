codeunit 50000 AreaCalculator
{
    var
        Calculator: Codeunit ShapeCalculator;

    procedure CalculateArea()
    var
        Shape: Record Shape;
        ShapeCharacteristicProvider: Interface TwoDimensionalShapeProvider;
        TotalArea: Decimal;
    begin
        TotalArea := 0;
        Calculator.GetShapes(Shape);
        if Shape.FindSet() then
            repeat
                ShapeCharacteristicProvider := Shape.ShapeType;
                TotalArea += ShapeCharacteristicProvider.CalculateArea(Shape);
            until Shape.Next() = 0;
        Calculator.SetResult(TotalArea);
    end;

    procedure GetResult(): Decimal
    begin
        exit(Calculator.GetResult());
    end;
}