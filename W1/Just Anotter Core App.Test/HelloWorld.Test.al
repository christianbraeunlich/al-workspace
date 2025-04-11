codeunit 60400 "HelloWorld Test"
{
    Subtype = Test;

    [Test]
    procedure TestTariffNumber()
    var
        TariffNumber: Record "Tariff Number";
    begin
        if MaxStrLen(TariffNumber.Description) <> 100 then
            Error('TariffNumber Description <> 100.');
    end;

}

