using {cuid, managed, Currency, sap.common.CodeList} from '@sap/cds/common';

namespace ram.devicetry;

entity DevicetryHeader : cuid, managed {
    Owner : String;
    ListType : Association to ListType;
    to_DevicetryItem     : Composition of many DevicetryItem on to_DevicetryItem.to_DevicetryHeader = $self;
};

entity DevicetryItem : cuid, managed {
    DeviceName : String(40);
    BillNumber : String(40); 
    BillImage : LargeBinary @Core.MediaType: 'image/png';
    Manufacturer : String(40);
    Warranty: Date;
    DevicePrice : Decimal(16,2) @Measures.ISOCurrency: DeviceCurrency_code;
    DeviceCurrency : Currency;
    Image : LargeBinary @Core.MediaType: 'image/png';
    to_DevicetryHeader : Association to DevicetryHeader;
    // to_DevicetryImages : Composition of many DeviceImages on to_DevicetryImages.to_DevicetryItem = $self;
};

// entity DeviceImages : cuid, managed {
//     Images : LargeBinary @Core.MediaType: 'image/png';
//     to_DevicetryItem       : Association to DevicetryItem;
// };

// Code List
entity ListType : CodeList {
  key Code : String enum {
    Personal = 'P';
    Shared   = 'S';
  };
}