@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface view for Sales item'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity Zi_ud_so_Item as select from zud_so_item
association [0..*] to ZI_UD_SO_WAREHOUSE as _Warehouse
    on $projection.Matnr = _Warehouse.Matnr
    
association        to parent ZI_UD_SO_HEADER as _Header    on $projection.Vbeln = _Header.Vbeln

{
    key vbeln as Vbeln,
    key posnr as Posnr,
    matnr as Matnr,
    maktx as Maktx,
      @Semantics.quantity.unitOfMeasure : 'Vrkme'
    kwmeng as Kwmeng,
    vrkme as Vrkme,
    lgnum as Lgnum,
     @Semantics.quantity.unitOfMeasure : 'Gewei'
    brgew as Brgew,
    gewei as Gewei,
    dimensions as Dimensions,
    vbeln_dlv as VbelnDlv,
    tknum as Tknum,
    _Header,
    _Warehouse
    
}
