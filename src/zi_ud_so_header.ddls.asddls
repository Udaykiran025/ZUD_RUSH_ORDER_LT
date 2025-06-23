@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'interface view for sales header'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_UD_SO_HEADER as select from zud_so_header
composition [0..*] of ZI_UD_SO_ITEM    as _Item
//composition of target_data_source_name as _association_name
{
    key vbeln as Vbeln,
    name1 as Name1,
    lfsta as Lfsta,
    ship_to_address as ShipToAddress,
     _Item
}
