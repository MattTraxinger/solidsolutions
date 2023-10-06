codeunit 50008 Default2DProvider implements TwoDimensionalShapeProvider
{
    procedure CalculateArea(Shape: Record Shape): Decimal
    var
        NoImplementationErr: Label 'No two dimensional provider has been implemented for the %1.';
    begin
        Error(NoImplementationErr, Shape.ShapeType);
    end;
}