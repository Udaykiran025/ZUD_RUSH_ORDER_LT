CLASS zcl_rush_insert DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_rush_insert IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

   DATA: lt_header   TYPE STANDARD TABLE OF zud_so_header WITH EMPTY KEY,
          lt_item     TYPE STANDARD TABLE OF zud_so_item WITH EMPTY KEY,
         lt_warehouse TYPE STANDARD TABLE OF zud_so_warehouse WITH EMPTY KEY.

    " Prepare test data for zud_so_header
    lt_header = VALUE #(
       ( vbeln = '5000000001' name1 = 'Amazon.com Inc.'      lfsta = ' ' ship_to_address = '410 Terry Ave N, Seattle, WA 98109' )
  ( vbeln = '5000000002' name1 = 'Apple Inc.'           lfsta = ' ' ship_to_address = '1 Apple Park Way, Cupertino, CA 95014' )
  ( vbeln = '5000000003' name1 = 'Google LLC'           lfsta = ' ' ship_to_address = '1600 Amphitheatre Pkwy, Mountain View, CA 94043' )
  ( vbeln = '5000000004' name1 = 'IBM Corporation'      lfsta = ' ' ship_to_address = '1 New Orchard Rd, Armonk, NY 10504' )
  ( vbeln = '5000000005' name1 = 'Microsoft Corporation' lfsta = ' ' ship_to_address = '1 Microsoft Way, Redmond, WA 98052' )
  ( vbeln = '5000000006' name1 = 'Uber Technologies'    lfsta = ' ' ship_to_address = '1455 Market St #400, San Francisco, CA 94103' )
  ( vbeln = '5000000007' name1 = 'Tesla Inc.'           lfsta = ' ' ship_to_address = '3500 Deer Creek Rd, Palo Alto, CA 94304' )
  ( vbeln = '5000000008' name1 = 'Walmart Inc.'         lfsta = ' ' ship_to_address = '702 SW 8th St, Bentonville, AR 72716' )
  ( vbeln = '5000000009' name1 = 'Procter & Gamble'     lfsta = ' ' ship_to_address = '1 P&G Plaza, Cincinnati, OH 45202' )
  ( vbeln = '5000000010' name1 = 'PepsiCo Inc.'         lfsta = ' ' ship_to_address = '700 Anderson Hill Rd, Purchase, NY 10577' )
    ).

    DELETE FROM zud_so_header.
    INSERT zud_so_header FROM TABLE @lt_header.
    out->write( |{ sy-dbcnt } entries inserted into zud_so_header| ).

    " Prepare test data for zud_so_item
    lt_item = VALUE #(
      " Orders with 1 item
       ( vbeln = '5000000001' posnr = '000010' matnr = 'MAT1001' maktx = 'Steel Rod'   kwmeng = '6.000' vrkme = 'EA' brgew = '100.000' gewei = 'KG' dimensions = '10x2x2' lgnum = '' vbeln_dlv = '' tknum = '' )
  ( vbeln = '5000000002' posnr = '000010' matnr = 'MAT1002' maktx = 'Iron Sheet'  kwmeng = '5.000'  vrkme = 'EA' brgew = '75.000'  gewei = 'KG' dimensions = '5x2x1' lgnum = '' vbeln_dlv = '' tknum = '' )
  ( vbeln = '5000000003' posnr = '000010' matnr = 'MAT1003' maktx = 'Copper Pipe' kwmeng = '7.500'  vrkme = 'EA' brgew = '50.000'  gewei = 'KG' dimensions = '3x1x1' lgnum = '' vbeln_dlv = '' tknum = '' )

  ( vbeln = '5000000004' posnr = '000010' matnr = 'MAT1001' maktx = 'Steel Rod'   kwmeng = '15.000' vrkme = 'EA' brgew = '150.000' gewei = 'KG' dimensions = '10x2x2' lgnum = '' vbeln_dlv = '' tknum = '' )
  ( vbeln = '5000000004' posnr = '000020' matnr = 'MAT1004' maktx = 'PVC Pipe'    kwmeng = '8.000'  vrkme = 'EA' brgew = '20.000'  gewei = 'KG' dimensions = '4x2x1' lgnum = '' vbeln_dlv = '' tknum = '' )

  ( vbeln = '5000000005' posnr = '000010' matnr = 'MAT1004' maktx = 'PVC Pipe'    kwmeng = '6.000'  vrkme = 'EA' brgew = '60.000'  gewei = 'KG' dimensions = '5x1x1' lgnum = '' vbeln_dlv = '' tknum = '' )
  ( vbeln = '5000000005' posnr = '000020' matnr = 'MAT1002' maktx = 'Iron Sheet'  kwmeng = '12.000' vrkme = 'EA' brgew = '100.000' gewei = 'KG' dimensions = '5x2x1' lgnum = '' vbeln_dlv = '' tknum = '' )

  ( vbeln = '5000000006' posnr = '000010' matnr = 'MAT1003' maktx = 'Copper Pipe' kwmeng = '9.000'  vrkme = 'EA' brgew = '80.000'  gewei = 'KG' dimensions = '3x1x1' lgnum = '' vbeln_dlv = '' tknum = '' )
  ( vbeln = '5000000006' posnr = '000020' matnr = 'MAT1001' maktx = 'Steel Rod'   kwmeng = '5.000'  vrkme = 'EA' brgew = '40.000'  gewei = 'KG' dimensions = '10x2x2' lgnum = '' vbeln_dlv = '' tknum = '' )

  ( vbeln = '5000000007' posnr = '000010' matnr = 'MAT1004' maktx = 'PVC Pipe'    kwmeng = '20.000' vrkme = 'EA' brgew = '5.000'   gewei = 'KG' dimensions = '4x2x1' lgnum = '' vbeln_dlv = '' tknum = '' )
  ( vbeln = '5000000007' posnr = '000020' matnr = 'MAT1002' maktx = 'Iron Sheet'  kwmeng = '10.000' vrkme = 'EA' brgew = '25.000'  gewei = 'KG' dimensions = '5x2x1' lgnum = '' vbeln_dlv = '' tknum = '' )
  ( vbeln = '5000000007' posnr = '000030' matnr = 'MAT1003' maktx = 'Copper Pipe' kwmeng = '6.000'  vrkme = 'EA' brgew = '15.000'  gewei = 'KG' dimensions = '3x1x1' lgnum = '' vbeln_dlv = '' tknum = '' )

  ( vbeln = '5000000008' posnr = '000010' matnr = 'MAT1001' maktx = 'Steel Rod'   kwmeng = '10.000' vrkme = 'EA' brgew = '100.000' gewei = 'KG' dimensions = '10x2x2' lgnum = '' vbeln_dlv = '' tknum = '' )
  ( vbeln = '5000000008' posnr = '000020' matnr = 'MAT1004' maktx = 'PVC Pipe'    kwmeng = '4.000'  vrkme = 'EA' brgew = '10.000'  gewei = 'KG' dimensions = '4x2x1' lgnum = '' vbeln_dlv = '' tknum = '' )
  ( vbeln = '5000000008' posnr = '000030' matnr = 'MAT1002' maktx = 'Iron Sheet'  kwmeng = '7.000'  vrkme = 'EA' brgew = '70.000'  gewei = 'KG' dimensions = '5x2x1' lgnum = '' vbeln_dlv = '' tknum = '' )

  ( vbeln = '5000000009' posnr = '000010' matnr = 'MAT1003' maktx = 'Copper Pipe' kwmeng = '8.000'  vrkme = 'EA' brgew = '75.000'  gewei = 'KG' dimensions = '3x1x1' lgnum = '' vbeln_dlv = '' tknum = '' )
  ( vbeln = '5000000009' posnr = '000020' matnr = 'MAT1002' maktx = 'Iron Sheet'  kwmeng = '10.000' vrkme = 'EA' brgew = '90.000'  gewei = 'KG' dimensions = '5x2x1' lgnum = '' vbeln_dlv = '' tknum = '' )
  ( vbeln = '5000000009' posnr = '000030' matnr = 'MAT1001' maktx = 'Steel Rod'   kwmeng = '6.000'  vrkme = 'EA' brgew = '45.000'  gewei = 'KG' dimensions = '10x2x2' lgnum = '' vbeln_dlv = '' tknum = '' )

  ( vbeln = '5000000010' posnr = '000010' matnr = 'MAT1004' maktx = 'PVC Pipe'    kwmeng = '12.000' vrkme = 'EA' brgew = '30.000'  gewei = 'KG' dimensions = '4x2x1' lgnum = '' vbeln_dlv = '' tknum = '' )
  ( vbeln = '5000000010' posnr = '000020' matnr = 'MAT1002' maktx = 'Iron Sheet'  kwmeng = '3.000'  vrkme = 'EA' brgew = '50.000'  gewei = 'KG' dimensions = '5x2x1' lgnum = '' vbeln_dlv = '' tknum = '' )
  ( vbeln = '5000000010' posnr = '000030' matnr = 'MAT1003' maktx = 'Copper Pipe' kwmeng = '8.000'  vrkme = 'EA' brgew = '80.000'  gewei = 'KG' dimensions = '3x1x1' lgnum = '' vbeln_dlv = '' tknum = '' )
    ).

    DELETE FROM zud_so_item.
    INSERT zud_so_item FROM TABLE @lt_item.
    out->write( |{ sy-dbcnt } entries inserted into zud_so_item| ).

    " Prepare test data for zud_so_warehouse
    lt_warehouse = VALUE #(
  ( lgnum = 'W01' matnr = 'MAT1001' werks = 'PL01' lgort = '1001' kwmeng = '100.000' vrkme = 'EA' distance = '12.5' dist_uom = 'MI' warehouse_address = 'Warehouse 1, 350 5th Ave, New York, NY 10118' )
  ( lgnum = 'W01' matnr = 'MAT1002' werks = 'PL01' lgort = '1001' kwmeng = '90.000'  vrkme = 'EA' distance = '12.5' dist_uom = 'MI' warehouse_address = 'Warehouse 1, 350 5th Ave, New York, NY 10118' )
  ( lgnum = 'W01' matnr = 'MAT1003' werks = 'PL02' lgort = '1001' kwmeng = '75.000'  vrkme = 'EA' distance = '12.5' dist_uom = 'MI' warehouse_address = 'Warehouse 1, 350 5th Ave, New York, NY 10118' )
  ( lgnum = 'W01' matnr = 'MAT1004' werks = 'PL02' lgort = '1001' kwmeng = '60.000'  vrkme = 'EA' distance = '12.5' dist_uom = 'MI' warehouse_address = 'Warehouse 1, 350 5th Ave, New York, NY 10118' )

  " Warehouse W02 - Chicago
  ( lgnum = 'W02' matnr = 'MAT1001' werks = 'PL01' lgort = '1002' kwmeng = '110.000' vrkme = 'EA' distance = '18.0' dist_uom = 'MI' warehouse_address = 'Warehouse 2, 233 S Wacker Dr, Chicago, IL 60606' )
  ( lgnum = 'W02' matnr = 'MAT1002' werks = 'PL02' lgort = '1002' kwmeng = '100.000' vrkme = 'EA' distance = '18.0' dist_uom = 'MI' warehouse_address = 'Warehouse 2, 233 S Wacker Dr, Chicago, IL 60606' )
  ( lgnum = 'W02' matnr = 'MAT1003' werks = 'PL01' lgort = '1002' kwmeng = '95.000'  vrkme = 'EA' distance = '18.0' dist_uom = 'MI' warehouse_address = 'Warehouse 2, 233 S Wacker Dr, Chicago, IL 60606' )
  ( lgnum = 'W02' matnr = 'MAT1004' werks = 'PL02' lgort = '1002' kwmeng = '85.000'  vrkme = 'EA' distance = '18.0' dist_uom = 'MI' warehouse_address = 'Warehouse 2, 233 S Wacker Dr, Chicago, IL 60606' )

  " Warehouse W03 - Dallas
  ( lgnum = 'W03' matnr = 'MAT1001' werks = 'PL02' lgort = '1003' kwmeng = '120.000' vrkme = 'EA' distance = '22.7' dist_uom = 'MI' warehouse_address = 'Warehouse 3, 2323 Victory Ave, Dallas, TX 75219' )
  ( lgnum = 'W03' matnr = 'MAT1002' werks = 'PL01' lgort = '1003' kwmeng = '95.000'  vrkme = 'EA' distance = '22.7' dist_uom = 'MI' warehouse_address = 'Warehouse 3, 2323 Victory Ave, Dallas, TX 75219' )
  ( lgnum = 'W03' matnr = 'MAT1003' werks = 'PL01' lgort = '1003' kwmeng = '85.000'  vrkme = 'EA' distance = '22.7' dist_uom = 'MI' warehouse_address = 'Warehouse 3, 2323 Victory Ave, Dallas, TX 75219' )
  ( lgnum = 'W03' matnr = 'MAT1004' werks = 'PL02' lgort = '1003' kwmeng = '70.000'  vrkme = 'EA' distance = '22.7' dist_uom = 'MI' warehouse_address = 'Warehouse 3, 2323 Victory Ave, Dallas, TX 75219' )

  " Warehouse W04 - Los Angeles
  ( lgnum = 'W04' matnr = 'MAT1001' werks = 'PL01' lgort = '1004' kwmeng = '130.000' vrkme = 'EA' distance = '29.1' dist_uom = 'MI' warehouse_address = 'Warehouse 4, 777 S Alameda St, Los Angeles, CA 90021' )
  ( lgnum = 'W04' matnr = 'MAT1002' werks = 'PL02' lgort = '1004' kwmeng = '105.000' vrkme = 'EA' distance = '29.1' dist_uom = 'MI' warehouse_address = 'Warehouse 4, 777 S Alameda St, Los Angeles, CA 90021' )
  ( lgnum = 'W04' matnr = 'MAT1003' werks = 'PL02' lgort = '1004' kwmeng = '90.000'  vrkme = 'EA' distance = '29.1' dist_uom = 'MI' warehouse_address = 'Warehouse 4, 777 S Alameda St, Los Angeles, CA 90021' )
  ( lgnum = 'W04' matnr = 'MAT1004' werks = 'PL01' lgort = '1004' kwmeng = '65.000'  vrkme = 'EA' distance = '29.1' dist_uom = 'MI' warehouse_address = 'Warehouse 4, 777 S Alameda St, Los Angeles, CA 90021' )

  " Warehouse W05 - Atlanta
  ( lgnum = 'W05' matnr = 'MAT1001' werks = 'PL02' lgort = '1005' kwmeng = '140.000' vrkme = 'EA' distance = '17.3' dist_uom = 'MI' warehouse_address = 'Warehouse 5, 1800 Phoenix Blvd, Atlanta, GA 30349' )
  ( lgnum = 'W05' matnr = 'MAT1002' werks = 'PL01' lgort = '1005' kwmeng = '110.000' vrkme = 'EA' distance = '17.3' dist_uom = 'MI' warehouse_address = 'Warehouse 5, 1800 Phoenix Blvd, Atlanta, GA 30349' )
  ( lgnum = 'W05' matnr = 'MAT1003' werks = 'PL01' lgort = '1005' kwmeng = '95.000'  vrkme = 'EA' distance = '17.3' dist_uom = 'MI' warehouse_address = 'Warehouse 5, 1800 Phoenix Blvd, Atlanta, GA 30349' )
  ( lgnum = 'W05' matnr = 'MAT1004' werks = 'PL02' lgort = '1005' kwmeng = '80.000'  vrkme = 'EA' distance = '17.3' dist_uom = 'MI' warehouse_address = 'Warehouse 5, 1800 Phoenix Blvd, Atlanta, GA 30349' )

    ).

    DELETE FROM zud_so_warehouse.
    INSERT zud_so_warehouse FROM TABLE @lt_warehouse.
    out->write( |{ sy-dbcnt } entries inserted into zud_so_warehouse| ).

    COMMIT WORK.
  ENDMETHOD.
ENDCLASS.
