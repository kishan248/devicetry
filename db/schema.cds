using {cuid, managed, Currency, sap.common.CodeList} from '@sap/cds/common';

namespace ram.devicetry;

entity DevicetryHeader : cuid, managed {
    Owner : String;
    ListType : Association to ListType;
};

entity DevicetryItem : cuid, managed {
    DeviceName : String(40);
    BillNumber : Integer64; 
    Manufacturer : String(40);
    Warranty: Date;
    DevicePrice : Decimal(16,2) @Measures.ISOCurrency: DeviceCurrency_code;
    DeviceCurrency : Currency
};

// Code List
entity ListType : CodeList {
  key Code : String enum {
    Personal = 'P';
    Shared   = 'S';
  };
}