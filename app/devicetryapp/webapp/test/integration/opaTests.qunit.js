sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ram/devicetry/ui/devicetryapp/test/integration/FirstJourney',
		'ram/devicetry/ui/devicetryapp/test/integration/pages/DevicetryHeaderList',
		'ram/devicetry/ui/devicetryapp/test/integration/pages/DevicetryHeaderObjectPage',
		'ram/devicetry/ui/devicetryapp/test/integration/pages/DevicetryItemObjectPage'
    ],
    function(JourneyRunner, opaJourney, DevicetryHeaderList, DevicetryHeaderObjectPage, DevicetryItemObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ram/devicetry/ui/devicetryapp') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheDevicetryHeaderList: DevicetryHeaderList,
					onTheDevicetryHeaderObjectPage: DevicetryHeaderObjectPage,
					onTheDevicetryItemObjectPage: DevicetryItemObjectPage
                }
            },
            opaJourney.run
        );
    }
);