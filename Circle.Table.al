table 50001 Circle
{
    fields
    {
        field(1; Id; Integer) { }
        field(2; Radius; Decimal) { }
    }

    procedure CalculateArea(): Decimal
    var
        Math: Codeunit Math;
    begin
        exit(Math.Pi() * Math.Pow(Rec.Radius, 2));
    end;
}