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
            {
                $Type : 'UI.DataFieldForAction',
                Action : 'CatalogService.approveinvoice',
                Label : 'Approve product',
            },
            {
                $Type : 'UI.DataFieldForAction',
                Action : 'CatalogService.approval',
                Label : 'Approval',
            },
            {
                $Type:'UI.DataFieldForAction',
                Action:'CatalogService.payment',
                Label:'Payment'
            }
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
    UI.Identification : [
        
    ],
);

annotate service.purchaseOrders with @(
    UI.LineItem #purchaseorder : [
        {
            $Type : 'UI.DataField',
            Label : 'poNumber',
            Value :poNumber,
        },
        {
            $Type:'UI.DataField',
            Label:'OrderDate',
            Value:OrderDate
        },
        {
            $Type:'UI.DataField',
            Label:'totalAmount',
            Value:totalAmount
        },
        {
            $Type:'UI.DataField',
            Label:'status',
            Value:status
        },
    ]
);

annotate service.invoices with @(
    UI.LineItem #Invoice : [

        {
            $Type : 'UI.DataField',
            Label : 'invoiceNumber',
            Value : invoiceNumber,
        },
        {
            $Type:'UI.DataField',
            Label:'invoiceDate',
            Value:invoiceDate
        },
        {
            $Type:'UI.DataField',
            Label:'totalAmount',
            Value:totalAmount
        },
        {
            $Type:'UI.DataField',
            Label:'status',
            Value:status
        },
    ]
);

annotate service.approvals with @(
    UI.LineItem #Approval : [
        {
            $Type : 'UI.DataField',
            Label : 'approverName',
            Value : approverName,
        },
        {
            $Type:'UI.DataField',
            Label:'approvalStatus',
            Value:approvalStatus
        },
        {
            $Type:'UI.DataField',
            Label:'comments',
            Value:comments
        },
        {
            $Type:'UI.DataField',
            Label:'approvalDate',
            Value:approvalDate
        },
    ]
);

annotate service.payments with @(
    UI.LineItem #Payment : [

        {
            $Type : 'UI.DataField',
            Label : 'payamount',
            Value : payamount,
        },
        {
            $Type:'UI.DataField',
            Label:'paymentDate',
            Value:paymentDate
        },
        {
            $Type:'UI.DataField',
            Label:'paymentStatus',
            Value:paymentStatus
        },
    ]
);

