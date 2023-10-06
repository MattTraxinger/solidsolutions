codeunit 50001 AreaCalculatorOutputter
{

    procedure AsMessage(AreaCalculator: Codeunit AreaCalculator)
    var
        AreaMsg: Label 'The calculated area is %1.';
    begin
        Message(AreaMsg, AreaCalculator.GetResult());
    end;

    procedure AsJson(AreaCalculator: Codeunit AreaCalculator): JsonObject
    var
        AreaLabel: Label 'Area';
        ShapeAreaObject: JsonObject;
    begin
        ShapeAreaObject.Add(AreaLabel, AreaCalculator.GetResult());
        exit(ShapeAreaObject);
    end;
}