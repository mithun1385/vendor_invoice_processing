using CatalogService as service from '../../srv/cat-service';
annotate service.vendors with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'vendorName',
                Value : vendorName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'email',
                Value : email,
            },
            {
                $Type : 'UI.DataField',
                Label : 'phone',
                Value : phone,
            },
            {
                $Type : 'UI.DataField',
                Label : 'address',
                Value : address,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'purchaseorder',
            ID : 'purchaseorder',
            Target : 'purchaseOrder/@UI.LineItem#purchaseorder',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Invoice',
            ID : 'Invoice',
            Target : 'invoice/@UI.LineItem#Invoice',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Approval',
            ID : 'Approval',
            Target : 'Approval/@UI.LineItem#Approval',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Payment',
            ID : 'Payment',
            Target : 'payment/@UI.LineItem#Payment',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'vendorName',
            Value : vendorName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'email',
            Value : email,
        },
        {
            $Type : 'UI.DataField',
            Label : 'phone',
            Value : phone,
        },
        {
            $Type : 'UI.DataField',
            Label : 'address',
            Value : address,
        },
    ],
);

annotate service.purchaseOrders with @(
    UI.LineItem #purchaseorder : [
    ]
);

annotate service.invoices with @(
    UI.LineItem #Invoice : [
    ]
);

annotate service.approvals with @(
    UI.LineItem #Approval : [
    ]
);

annotate service.payments with @(
    UI.LineItem #Payment : [
    ]
);

