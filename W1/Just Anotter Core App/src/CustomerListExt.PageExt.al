// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!

namespace christianbraeunlich.W1.JustAnotterApp;

using Microsoft.Sales.Customer;
using Microsoft.Inventory.Intrastat;

pageextension 60100 CustomerListExt extends "Customer List"
{
    trigger OnOpenPage();
    begin
        Message(this.GetFirstTariffNumberDescription());
    end;

    procedure GetFirstTariffNumberDescription(): Text[100]
    var
        tariffNumber: Record "Tariff Number";
    begin
        if not tariffNumber.FindFirst() then
            exit;

        exit(tariffNumber.Description);
    end;
}

