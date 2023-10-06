enum 50000 ShapeType implements ShapeCharacteristicProvider
{
    Extensible = true;

    value(0; Square)
    {
        Implementation = ShapeCharacteristicProvider = SquareCharacteristics;
    }
    value(1; Circle)
    {
        Implementation = ShapeCharacteristicProvider = CircleCharacteristics;
    }
}