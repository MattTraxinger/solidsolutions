codeunit 50003 SquareCharacteristics implements TwoDimensionalShapeProvider
{
    procedure CalculateArea(Shape: Record Shape): Decimal
    var
        Square: Record Square;
        Math: Codeunit Math;
    begin
        Square.SetRange(SystemId, Shape.ShapeId);
        Square.FindFirst();
        exit(Math.Pow(Square.Length, 2));
    end;
}