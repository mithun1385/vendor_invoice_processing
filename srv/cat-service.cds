using { vendorinvocie as db  } from '../db/schema';

service CatalogService {
   @odata.draft.enabled
    entity  vendors as projection on db.Vendors actions {

        action approveinvoice(
            status:String(255)
        ) returns String  ;

        action approval(
            approverName:String,
            approvalStatus:String,
            comments:String,
            approvalDate:Date
        ) returns String;

        action payment(
            payamount:Decimal,
            paymentDate:Date,
            paymentStatus:String,
        )
    };
 
    entity  purchaseOrders as projection on db.PurchaseOrders;
    entity  invoices as projection on db.Invoices;
    entity  approvals as projection on db.Approvals;
    entity  payments as projection on db.payments;

}



