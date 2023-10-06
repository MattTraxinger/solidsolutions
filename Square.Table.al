table 50002 Square
{
    fields
    {
        field(1; Id; Integer) { }
        field(2; Length; Decimal) { }
    }

    procedure CalculateArea(): Decimal
    var
        Math: Codeunit Math;
    begin
        exit(Math.Pow(Rec.Length, 2));
    end;
}