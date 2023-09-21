using { ram.devicetry as my } from '../db/schema';

service TravelService {
    @odata.draft.enabled //Enable Draft
    entity DevicetryHeader as projection on my.DevicetryHeader;
    entity DevicetryItem as projection on my.DevicetryItem;
}