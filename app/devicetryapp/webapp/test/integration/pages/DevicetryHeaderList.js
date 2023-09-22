sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'ram.devicetry.ui.devicetryapp',
            componentId: 'DevicetryHeaderList',
            entitySet: 'DevicetryHeader'
        },
        CustomPageDefinitions
    );
});