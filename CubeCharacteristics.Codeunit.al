codeunit 50005 CubeCharacteristics implements ThreeDimensionalShapeProvider
{
    procedure CalculateVolume(Shape: Record Shape): Decimal
    var
        Cube: Record Cube;
        Math: Codeunit Math;
    begin
        Cube.SetRange(SystemId, Shape.ShapeId);
        Cube.FindFirst();
        exit(Math.Pow(Cube.Length, 3));
    end;
}