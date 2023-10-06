codeunit 50002 CircleCharacteristics implements ShapeCharacteristicProvider
{
    procedure CalculateArea(Shape: Record Shape): Decimal
    var
        Circle: Record Circle;
        Math: Codeunit Math;
    begin
        Circle.SetRange(SystemId, Shape.ShapeId);
        Circle.FindFirst();
        exit(Math.Pi() * Math.Pow(Circle.Radius, 2));
    end;

    procedure CalculateVolume(Shape: Record Shape): Decimal
    begin
    end;
}