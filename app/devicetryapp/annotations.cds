using TravelService as service from '../../srv/device-user';

annotate service.DevicetryHeader with @(
    odata.draft.enabled: true,
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Owner',
            Value : Owner,
        },
        {
            $Type : 'UI.DataField',
            Label : 'List Type',
            Value : ListType_Code,
        },
    ]
);
annotate service.DevicetryHeader with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Owner',
                Value : Owner,
            },
            {
                $Type : 'UI.DataField',
                Label : 'List Type',
                Value : ListType_Code,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'List of Devices',
            ID : 'ListofDevices',
            Target : 'to_DevicetryItem/@UI.LineItem#ListofDevices',
        },
    ]
);
annotate service.DevicetryItem with @(
    UI.LineItem #ListofDevices : [
        {
            $Type : 'UI.DataField',
            Value : BillNumber,
            Label : 'Bill Number',
        },{
            $Type : 'UI.DataField',
            Value : DeviceName,
            Label : 'Device Name',
        },{
            $Type : 'UI.DataField',
            Value : DevicePrice,
            Label : 'Device Price',
        },{
            $Type : 'UI.DataField',
            Value : Manufacturer,
            Label : 'Manufacturer',
        },{
            $Type : 'UI.DataField',
            Value : Warranty,
            Label : 'Warranty',
        },]
);
