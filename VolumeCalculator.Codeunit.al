codeunit 50004 VolumeCalculator
{
    var
        Calculator: Codeunit ShapeCalculator;

    procedure CalculateVolume()
    var
        Shape: Record Shape;
        ShapeCharacteristicProvider: Interface ThreeDimensionalShapeProvider;
        TotalVolume: Decimal;
    begin
        TotalVolume := 0;
        Calculator.GetShapes(Shape);
        if Shape.FindSet() then
            repeat
                ShapeCharacteristicProvider := Shape.ShapeType;
                TotalVolume += ShapeCharacteristicProvider.CalculateVolume(Shape);
            until Shape.Next() = 0;
        Calculator.SetResult(TotalVolume);
    end;

    procedure GetResult(): Decimal
    begin
        exit(Calculator.GetResult());
    end;
}