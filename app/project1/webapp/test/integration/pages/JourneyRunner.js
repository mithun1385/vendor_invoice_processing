sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"project1/test/integration/pages/vendorsList",
	"project1/test/integration/pages/vendorsObjectPage"
], function (JourneyRunner, vendorsList, vendorsObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('project1') + '/test/flp.html#app-preview',
        pages: {
			onThevendorsList: vendorsList,
			onThevendorsObjectPage: vendorsObjectPage
        },
        async: true
    });

    return runner;
});

