@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption view for item'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_UD_SO_ITEM as projection on Zi_ud_so_Item
{
    key Vbeln,
    key Posnr,
    Matnr,
    Maktx,
    @Semantics.quantity.unitOfMeasure : 'Vrkme'
    Kwmeng,
    Vrkme,
    Lgnum,
    @Semantics.quantity.unitOfMeasure : 'Gewei'
    Brgew,
    Gewei,
    Dimensions,
    VbelnDlv,
    Tknum,
    /* Associations */
    _Header : redirected to parent ZC_UD_SO_HEADER,
    _Warehouse 
}
