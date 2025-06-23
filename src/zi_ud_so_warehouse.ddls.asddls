@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface view  for warehouse'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_UD_SO_WAREHOUSE as select from zud_so_warehouse

{
    key lgnum as Lgnum,
    key matnr as Matnr,
    werks as Werks,
    lgort as Lgort,
     @Semantics.quantity.unitOfMeasure : 'Vrkme'
    kwmeng as Kwmeng,
    vrkme as Vrkme,
    @Semantics.quantity.unitOfMeasure : 'DistUom'
    distance as Distance,
    dist_uom as DistUom,
    warehouse_address as WarehouseAddress
    
}
