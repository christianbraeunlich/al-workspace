// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!

namespace christianbraeunlich.DE.JustAnotterApp;

using Microsoft.Sales.Customer;

pageextension 60600 CustomerListExt extends "Customer List"
{
    trigger OnOpenPage();
    begin
        Message(this.GetFirstTariffNumberDescription());
    end;
}

