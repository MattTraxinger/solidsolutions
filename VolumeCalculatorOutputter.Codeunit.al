codeunit 50007 VolumeCalculatorOutputter
{

    procedure AsMessage(VolumeCalculator: Codeunit VolumeCalculator)
    var
        VolumeMsg: Label 'The calculated volume is %1.';
    begin
        Message(VolumeMsg, VolumeCalculator.GetResult());
    end;

    procedure AsJson(VolumeCalculator: Codeunit VolumeCalculator): JsonObject
    var
        VolumeLabel: Label 'Volume';
        ShapeAreaObject: JsonObject;
    begin
        ShapeAreaObject.Add(VolumeLabel, VolumeCalculator.GetResult());
        exit(ShapeAreaObject);
    end;
}