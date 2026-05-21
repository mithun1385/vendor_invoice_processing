const cds = require('@sap/cds');
const { UPDATE } = require('@sap/cds/lib/ql/cds-ql');


module.exports = class CatalogService extends cds.ApplicationService {

    init() {
        const { vendors, purchaseOrders, invoices, approvals, payments } = this.entities;

        this.on('approveinvoice', async (req) => {

            const { status } = req.data;
            console.log(status);

            const vendorRequest = req.params[0].ID;

            console.log(" this is a vendorRequest ID ", vendorRequest);

            const result = await UPDATE(purchaseOrders)
                .set({
                    status: status
                })
                .where({
                    vendor_ID: vendorRequest
                });
            req.notify("Request is  status updated successfully");

            console.log("request show the result ", result);
        })

        this.on('approval', async (req) => {

            const { approverName, approvalStatus, comments, approvalDate } = req.data;

            const vendorRequest = req.params[0].ID;
            console.log("this is a vendorRequest", vendorRequest);

            const result = await UPDATE(approvals)
                .set({
                    approverName: approverName,
                    approvalStatus: approvalStatus,
                    comments: comments,
                    approvalDate: approvalDate
                })
                .where({
                    vendor_ID: vendorRequest
                });
            req.notify("Request is from the approvals", vendorRequest)
            console.log(" this request is a ", result);
        })

        this.on('payment',async (req)=>{

            const { payamount,paymentDate,paymentStatus } = req.data;

            const paymentrequest = req.params[0].ID;
            console.log("this is a payment request ",paymentrequest);

            const result = await UPDATE(payments)
            .set({
                payamount,
                paymentDate,
                paymentStatus,
            })
            .where({
                vendor_ID :paymentrequest
            });
            req.notify("Payment request is updated successfully")

            console.log("check the result ",result);     
        });

        return super.init()
    }


}

