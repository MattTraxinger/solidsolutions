interface ShapeCharacteristicProvider
{
    procedure CalculateArea(Shape: Record Shape): Decimal;
    procedure CalculateVolume(Shape: Record Shape): Decimal;
}