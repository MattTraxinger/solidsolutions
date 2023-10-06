enum 50000 ShapeType implements TwoDimensionalShapeProvider, ThreeDimensionalShapeProvider
{
    Extensible = true;
    DefaultImplementation = TwoDimensionalShapeProvider = Default2DProvider,
    ThreeDimensionalShapeProvider = Default3DProvider;

    value(0; Square)
    {
        Implementation = TwoDimensionalShapeProvider = SquareCharacteristics;
    }
    value(1; Circle)
    {
        Implementation = TwoDimensionalShapeProvider = CircleCharacteristics;
    }
    value(2; Cube)
    {
        Implementation = ThreeDimensionalShapeProvider = CubeCharacteristics;
    }
}