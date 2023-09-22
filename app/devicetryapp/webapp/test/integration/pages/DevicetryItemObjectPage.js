sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'ram.devicetry.ui.devicetryapp',
            componentId: 'DevicetryItemObjectPage',
            entitySet: 'DevicetryItem'
        },
        CustomPageDefinitions
    );
});