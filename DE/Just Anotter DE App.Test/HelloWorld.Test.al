codeunit 60800 "HelloWorld Test"
{
    Subtype = Test;

    [Test]
    procedure TestTariffNumber()
    var
        TariffNumber: Record "Tariff Number";
    begin
        if MaxStrLen(TariffNumber.Description) <> 250 then
            Error('TariffNumber Description <> 250.');
    end;
}

