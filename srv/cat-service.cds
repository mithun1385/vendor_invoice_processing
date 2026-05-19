using { vendorinvocie as db  } from '../db/schema';

service CatalogService {
    entity  vendors as projection on db.Vendors;
    entity  purchaseOrders as projection on db.PurchaseOrders;
    entity  invoices as projection on db.Invoices;
    entity  approvals as projection on db.Approvals;
    entity  payments as projection on db.payments;
    
}



