codeunit 50000 AreaCalculator
{
    var
        Shape: Record Shape;

    procedure SetShapes(var ShapesToCalculate: Record Shape)
    begin
        Shape := ShapesToCalculate;
    end;

    procedure CalculateArea(): Decimal
    var
        ShapeCharacteristicProvider: Interface ShapeCharacteristicProvider;
        TotalArea: Decimal;
    begin
        TotalArea := 0;
        if Shape.FindSet() then
            repeat
                ShapeCharacteristicProvider := Shape.ShapeType;
                TotalArea += ShapeCharacteristicProvider.CalculateArea(Shape);
            until Shape.Next() = 0;
        exit(TotalArea);
    end;
}