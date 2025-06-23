@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption view for header'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZC_UD_SO_HEADER as projection on ZI_UD_SO_HEADER
{
    key Vbeln,
    Name1,
    Lfsta,
    ShipToAddress,
    /* Associations */
    _Item : redirected to composition child ZC_UD_SO_ITEM
}
