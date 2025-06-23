@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption view for warehouse'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZC_UD_SO_WAREHOUSE as projection on ZI_UD_SO_WAREHOUSE
{
    key Lgnum,
    key Matnr,
    Werks,
    Lgort,
     @Semantics.quantity.unitOfMeasure : 'Vrkme'
    Kwmeng,
    Vrkme,
     @Semantics.quantity.unitOfMeasure : 'DistUom'
    Distance,
    DistUom,
    WarehouseAddress
}
