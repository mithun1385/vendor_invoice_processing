namespace vendorinvocie;

using {cuid} from '@sap/cds/common';



entity Vendors : cuid {
    vendorName    : String(255);
    email         : String(255);
    phone         : String(255);
    address       : String(255);

    purchaseOrder : Association to many PurchaseOrders
                        on purchaseOrder.vendor = $self;

    invoice       : Association to many Invoices
                        on invoice.vendor = $self;

    Approval      : Association to many Approvals
                        on Approval.vendor = $self;

    payment       : Association to many payments
                        on payment.vendor = $self;

}

entity PurchaseOrders : cuid {
    poNumber    : String(255);
    OrderDate   : Date;
    totalAmount : Decimal(10, 2);
    status      : String(255);

    invoice     : Association to one Invoices
                      on invoice.purchaseOrder = $self;
    vendor      : Association to one Vendors;

}

entity Invoices : cuid {

    invoiceNumber : String(255);
    invoiceDate   : Date;
    totalAmount   : Decimal(10, 2);
    status        : String(255);

    purchaseOrder : Association to one PurchaseOrders;

    approval      : Association to many Approvals
                        on approval.invoice = $self;
    vendor        : Association to one Vendors;

}

entity Approvals : cuid {

    approverName   : String(255);
    approvalStatus : String(255);
    comments       : String(255);
    approvalDate   : Date;

    invoice        : Association to Invoices;

    vendor         : Association to Vendors;

}

entity payments : cuid {
    payamount     : Decimal(10, 2);
    paymentDate   : Date;
    paymentStatus : String(255);

    invoice       : Association to Invoices;

    vendor        : Association to Vendors;
}
