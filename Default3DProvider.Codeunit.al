codeunit 50009 Default3DProvider implements ThreeDimensionalShapeProvider
{
    procedure CalculateVolume(Shape: Record Shape): Decimal
    var
        NoImplementationErr: Label 'No three dimensional provider has been implemented for the %1.';
    begin
        Error(NoImplementationErr, Shape.ShapeType);
    end;
}