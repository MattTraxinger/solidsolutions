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
        Circle: Record Circle;
        Square: Record Square;
        UnknownShapeErr: Label 'Unknown shape.';
        TotalArea: Decimal;
    begin
        TotalArea := 0;
        if Shape.FindSet() then
            repeat
                case Shape.ShapeType of
                    ShapeType::Circle:
                        begin
                            Circle.SetRange(SystemId, Shape.ShapeId);
                            Circle.FindFirst();
                            TotalArea += Circle.CalculateArea();
                        end;
                    ShapeType::Square:
                        begin
                            Square.SetRange(SystemId, Shape.ShapeId);
                            Square.FindFirst();
                            TotalArea += Square.CalculateArea();
                        end;
                    else
                        Error(UnknownShapeErr);
                end;
            until Shape.Next() = 0;
        exit(TotalArea);
    end;

    procedure DisplayArea()
    var
        AreaMsg: Label 'The calculated area is %1.';
    begin
        Message(AreaMsg, CalculateArea());
    end;
}