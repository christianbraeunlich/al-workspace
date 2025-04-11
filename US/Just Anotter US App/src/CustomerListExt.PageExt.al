// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!

namespace christianbraeunlich.US.JustAnotterApp;

using Microsoft.Sales.Customer;
using Microsoft.Inventory.Intrastat;

pageextension 60900 CustomerListExt extends "Customer List"
{
    trigger OnOpenPage();
    begin
        Message(this.GetFirstTariffNumberDescription());
    end;
}

