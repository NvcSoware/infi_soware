class TransDetailServer {
  bool addedRow;
  int siNo;
  int transDetailsNumber;
  int stockValidation;
  int seriesTypeNumber;
  int transHeadNumber;
  int itemBatchNumber;
  bool createItemBatch;
  int unitNumber;
  int itemUnitNumber;
  int currencyRate;
  int maxRetailPrice;
  int itemUnitPriceCurrency;
  int itemUnitPriceDecimal;
  int itemUnitPrice;
  int itemUnitPriceGridView;
  int itemUnitPriceExpense;
  int itemUnitPriceTax;
  int itemAgentRate;
  int itemAgentAmount;
  int itemNetUnitPrice;
  int itemNetUnitPriceGridView;
  int itemPhysicalQuantity;
  int itemSaleQuantity;
  int itemQuantity;
  int discountQuantity;
  int itemTotalQuantity;
  int itemImportQty;
  int itemGrossAmount;
  int itemDiscRate;
  int itemDiscAmount;
  int itemExtraDiscountRate;
  int itemExtraDiscountAmount;
  int specialDiscRate;
  int specialDiscAmount;
  int itemNetAmount;
  int itemTaxRate;
  int itemMasterTaxRate;
  dynamic commodityCode;
  dynamic commodityName;
  int itemTaxAmount;
  bool blnEditTaxAmount;
  int itemCessRate;
  int itemCessAmount;
  int transDiscRate;
  int transDiscAmount;
  int itemTotalAmount;
  int itemNetRate;
  int itemCostPrice;
  int itemTaxablePostingAmount;
  int itemCostPriceTemp;
  int itemCostPricePpTemp;
  int itemMrpTemp;
  int itemDiscAmountTemp;
  int itemDiscRateTemp;
  int gstRateTemp;
  int gstCessRateTemp;
  int gstAddCessAmountTemp;
  int wastageRateTemp;
  int packingExpenseTemp;
  int itemGrossAmountTemp;
  int floodCessRateTemp;
  dynamic itemDescription;
  dynamic itemRemarks;
  int volumeNumber;
  int itemVolume;
  dynamic itemReferenceCode;
  int itemQuantityBasic;
  int weight;
  int totalWeight;
  int netWeight;
  int totalNetWeight;
  int itemTaxRatePosting;
  int volumeQuantity;
  bool isLastEditDiscRate;
  bool isBatchBarcode;
  int itemTransAgentAmount;
  int itemSalesCommissionRate;
  int itemSalesCommissionAmount;
  int itemTransSalesCommissionAmount;
  int itemExpenseRate;
  int itemExpenseAmount;
  int itemOtherExpenseRate;
  int itemOtherExpenseAmount;
  int itemTransactionPrice;
  dynamic itemDescriptionMultiline;
  int itemNumber;
  int preBatchNumber;
  int preItemNumber;
  dynamic itemBatchCode;
  dynamic itemBatchName;
  int itemCodeNumber;
  dynamic itemCode;
  dynamic itemBarCode;
  dynamic itemEanCode;
  dynamic itemName;
  int hsnNumber;
  dynamic hsnCode;
  dynamic hsnName;
  dynamic unitName;
  int unitTypeNumber;
  int unitNumberBasic;
  dynamic unitNameBasic;
  bool isFind;
  int packingExpense;
  int wastageRate;
  int wastageQuantity;
  int itemHandlingChargesPerQty;
  int itemHandlingCharges;
  int itemHandlingChargeException;
  int priceTypeNumber;
  int priceGroupCalculation;
  dynamic itemMultiBarcode;
  dynamic basicUnitQty;
  dynamic higherUnitQty;
  dynamic offerMessage;
  dynamic offerRemarks;
  dynamic masterItemCode;
  int transTypeNumber;
  int stockPointNumber;
  dynamic stockPointNameFrom;
  dynamic stockPointNameTo;
  int stockPointNumberTo;
  int stockPointNumberFrom;
  int accHeadNumberItem;
  int accHeadNumberTax;
  int accHeadNumberSgst;
  dynamic accHeadNameSgst;
  int itemLocationNumber;
  int accHeadNumberSalesman;
  dynamic salesManName;
  dynamic manufactureName;
  dynamic stockpointName;
  dynamic locationName;
  int accHeadNumber;
  int transactionNumber;
  int itemPoint;
  int itemGroupPointFactor;
  int itemGroupPoint;
  bool isGodownItem;
  bool allowPriceEdit;
  bool allowZeroPrice;
  bool allowPriceLessThanCost;
  bool allowPriceLessThanMop;
  bool allowPriceGraterThanMrp;
  bool allowZeroQuantity;
  bool allowNegativeQty;
  bool allowNegativeStock;
  bool allowItemRepeation;
  bool validateExpDate;
  dynamic expiryDateInfo;
  dynamic batchExpiryDate;
  bool validateManufacturingDate;
  dynamic manufacturingDateInfo;
  dynamic manufacturingDate;
  int bestBeforeDays;
  int batchBehaviour;
  dynamic stopItemDeal;
  bool isStopItemDeal;
  bool allowQuantityEdit;
  int seriesNumber;
  int vanNumber;
  int costProportion;
  int itemAgentRateAfterNetAmount;
  int itemAgentAmountAfterNetAmount;
  int itemCommRateAfterNetAmount;
  int itemCommAmountAfterNetAmount;
  bool isItemUpdatePrice;
  int marginRate;
  int marginPrice;
  int itemGroupNumber;
  int excludedGroupItemPrintSiNo;
  dynamic itemGroupName;
  dynamic salesAccountName;
  dynamic taxAccountName;
  bool fixOldPrice;
  bool costChangedWarning;
  bool avoidPointCalculation;
  int higherUnitQtyDbl;
  int lowerUnitQty;
  int stockValue;
  int itemStockBasic;
  bool appliedScheme;
  int schemeNumber;
  dynamic schemeCode;
  dynamic schemeName;
  int memberNumber;
  bool isVatCustomer;
  bool isPriceEdit;
  bool ismprEdit;
  int basicMarginRate;
  int transPosDetailsNumber;
  bool deleteItem;
  bool isQuantityPriceType;
  dynamic volumeName;
  dynamic viewImage;
  int schemeNumberFrom;
  int itemCodeEntryType;
  int qtyPerPacket;
  int qtyPerCarton;
  int totalPacket;
  int totalCarton;
  int itemVolumeQuantity;
  int itemTaxRateChanging;
  int gstAddCessAmountChanging;
  int gstAddCessAmountTotalChanging;
  int itemTaxAmountChanging;
  int itemGstRateChanging;
  int itemGstAmountChanging;
  int gstRate;
  int gstAmount;
  int sgstRate;
  int sgstAmount;
  int cgstRate;
  int cgstAmount;
  int igstRate;
  int igstAmount;
  int gstCessRate;
  int gstCessAmount;
  int sqrMeter;
  int length;
  int width;
  dynamic itemPrefix;
  dynamic itemGroup;
  dynamic categoryGroup;
  dynamic sizeGroup;
  dynamic colorGroup;
  int currencyTotal;
  int nosInPacket;
  int nosInCase;
  bool isPreviousPurchase;
  int itemTotalAmountPrev;
  int itemStockMinQty;
  int itemSchemeNumber;
  int accHeadNumberItemScheme;
  int itemSchemeCalculationType;
  int itemSchemeDiscAmountPerQty;
  int itemSchemeMinimumQty;
  int floodCessRate;
  int floodCessAmount;
  int gstAddCessAmount;
  int gstAddCessAmountTotal;
  int itemCount;
  int itemQuantityWithDamage;
  int itemDamagePerCount;
  int itemTotalDamage;
  int directSchemeHeadNumber;
  bool showStock;
  int averageCost;

  TransDetailServer({
    required this.addedRow,
    required this.siNo,
    required this.transDetailsNumber,
    required this.stockValidation,
    required this.seriesTypeNumber,
    required this.transHeadNumber,
    required this.itemBatchNumber,
    required this.createItemBatch,
    required this.unitNumber,
    required this.itemUnitNumber,
    required this.currencyRate,
    required this.maxRetailPrice,
    required this.itemUnitPriceCurrency,
    required this.itemUnitPriceDecimal,
    required this.itemUnitPrice,
    required this.itemUnitPriceGridView,
    required this.itemUnitPriceExpense,
    required this.itemUnitPriceTax,
    required this.itemAgentRate,
    required this.itemAgentAmount,
    required this.itemNetUnitPrice,
    required this.itemNetUnitPriceGridView,
    required this.itemPhysicalQuantity,
    required this.itemSaleQuantity,
    required this.itemQuantity,
    required this.discountQuantity,
    required this.itemTotalQuantity,
    required this.itemImportQty,
    required this.itemGrossAmount,
    required this.itemDiscRate,
    required this.itemDiscAmount,
    required this.itemExtraDiscountRate,
    required this.itemExtraDiscountAmount,
    required this.specialDiscRate,
    required this.specialDiscAmount,
    required this.itemNetAmount,
    required this.itemTaxRate,
    required this.itemMasterTaxRate,
    required this.commodityCode,
    required this.commodityName,
    required this.itemTaxAmount,
    required this.blnEditTaxAmount,
    required this.itemCessRate,
    required this.itemCessAmount,
    required this.transDiscRate,
    required this.transDiscAmount,
    required this.itemTotalAmount,
    required this.itemNetRate,
    required this.itemCostPrice,
    required this.itemTaxablePostingAmount,
    required this.itemCostPriceTemp,
    required this.itemCostPricePpTemp,
    required this.itemMrpTemp,
    required this.itemDiscAmountTemp,
    required this.itemDiscRateTemp,
    required this.gstRateTemp,
    required this.gstCessRateTemp,
    required this.gstAddCessAmountTemp,
    required this.wastageRateTemp,
    required this.packingExpenseTemp,
    required this.itemGrossAmountTemp,
    required this.floodCessRateTemp,
    required this.itemDescription,
    required this.itemRemarks,
    required this.volumeNumber,
    required this.itemVolume,
    required this.itemReferenceCode,
    required this.itemQuantityBasic,
    required this.weight,
    required this.totalWeight,
    required this.netWeight,
    required this.totalNetWeight,
    required this.itemTaxRatePosting,
    required this.volumeQuantity,
    required this.isLastEditDiscRate,
    required this.isBatchBarcode,
    required this.itemTransAgentAmount,
    required this.itemSalesCommissionRate,
    required this.itemSalesCommissionAmount,
    required this.itemTransSalesCommissionAmount,
    required this.itemExpenseRate,
    required this.itemExpenseAmount,
    required this.itemOtherExpenseRate,
    required this.itemOtherExpenseAmount,
    required this.itemTransactionPrice,
    required this.itemDescriptionMultiline,
    required this.itemNumber,
    required this.preBatchNumber,
    required this.preItemNumber,
    required this.itemBatchCode,
    required this.itemBatchName,
    required this.itemCodeNumber,
    required this.itemCode,
    required this.itemBarCode,
    required this.itemEanCode,
    required this.itemName,
    required this.hsnNumber,
    required this.hsnCode,
    required this.hsnName,
    required this.unitName,
    required this.unitTypeNumber,
    required this.unitNumberBasic,
    required this.unitNameBasic,
    required this.isFind,
    required this.packingExpense,
    required this.wastageRate,
    required this.wastageQuantity,
    required this.itemHandlingChargesPerQty,
    required this.itemHandlingCharges,
    required this.itemHandlingChargeException,
    required this.priceTypeNumber,
    required this.priceGroupCalculation,
    required this.itemMultiBarcode,
    required this.basicUnitQty,
    required this.higherUnitQty,
    required this.offerMessage,
    required this.offerRemarks,
    required this.masterItemCode,
    required this.transTypeNumber,
    required this.stockPointNumber,
    required this.stockPointNameFrom,
    required this.stockPointNameTo,
    required this.stockPointNumberTo,
    required this.stockPointNumberFrom,
    required this.accHeadNumberItem,
    required this.accHeadNumberTax,
    required this.accHeadNumberSgst,
    required this.accHeadNameSgst,
    required this.itemLocationNumber,
    required this.accHeadNumberSalesman,
    required this.salesManName,
    required this.manufactureName,
    required this.stockpointName,
    required this.locationName,
    required this.accHeadNumber,
    required this.transactionNumber,
    required this.itemPoint,
    required this.itemGroupPointFactor,
    required this.itemGroupPoint,
    required this.isGodownItem,
    required this.allowPriceEdit,
    required this.allowZeroPrice,
    required this.allowPriceLessThanCost,
    required this.allowPriceLessThanMop,
    required this.allowPriceGraterThanMrp,
    required this.allowZeroQuantity,
    required this.allowNegativeQty,
    required this.allowNegativeStock,
    required this.allowItemRepeation,
    required this.validateExpDate,
    required this.expiryDateInfo,
    required this.batchExpiryDate,
    required this.validateManufacturingDate,
    required this.manufacturingDateInfo,
    required this.manufacturingDate,
    required this.bestBeforeDays,
    required this.batchBehaviour,
    required this.stopItemDeal,
    required this.isStopItemDeal,
    required this.allowQuantityEdit,
    required this.seriesNumber,
    required this.vanNumber,
    required this.costProportion,
    required this.itemAgentRateAfterNetAmount,
    required this.itemAgentAmountAfterNetAmount,
    required this.itemCommRateAfterNetAmount,
    required this.itemCommAmountAfterNetAmount,
    required this.isItemUpdatePrice,
    required this.marginRate,
    required this.marginPrice,
    required this.itemGroupNumber,
    required this.excludedGroupItemPrintSiNo,
    required this.itemGroupName,
    required this.salesAccountName,
    required this.taxAccountName,
    required this.fixOldPrice,
    required this.costChangedWarning,
    required this.avoidPointCalculation,
    required this.higherUnitQtyDbl,
    required this.lowerUnitQty,
    required this.stockValue,
    required this.itemStockBasic,
    required this.appliedScheme,
    required this.schemeNumber,
    required this.schemeCode,
    required this.schemeName,
    required this.memberNumber,
    required this.isVatCustomer,
    required this.isPriceEdit,
    required this.ismprEdit,
    required this.basicMarginRate,
    required this.transPosDetailsNumber,
    required this.deleteItem,
    required this.isQuantityPriceType,
    required this.volumeName,
    required this.viewImage,
    required this.schemeNumberFrom,
    required this.itemCodeEntryType,
    required this.qtyPerPacket,
    required this.qtyPerCarton,
    required this.totalPacket,
    required this.totalCarton,
    required this.itemVolumeQuantity,
    required this.itemTaxRateChanging,
    required this.gstAddCessAmountChanging,
    required this.gstAddCessAmountTotalChanging,
    required this.itemTaxAmountChanging,
    required this.itemGstRateChanging,
    required this.itemGstAmountChanging,
    required this.gstRate,
    required this.gstAmount,
    required this.sgstRate,
    required this.sgstAmount,
    required this.cgstRate,
    required this.cgstAmount,
    required this.igstRate,
    required this.igstAmount,
    required this.gstCessRate,
    required this.gstCessAmount,
    required this.sqrMeter,
    required this.length,
    required this.width,
    required this.itemPrefix,
    required this.itemGroup,
    required this.categoryGroup,
    required this.sizeGroup,
    required this.colorGroup,
    required this.currencyTotal,
    required this.nosInPacket,
    required this.nosInCase,
    required this.isPreviousPurchase,
    required this.itemTotalAmountPrev,
    required this.itemStockMinQty,
    required this.itemSchemeNumber,
    required this.accHeadNumberItemScheme,
    required this.itemSchemeCalculationType,
    required this.itemSchemeDiscAmountPerQty,
    required this.itemSchemeMinimumQty,
    required this.floodCessRate,
    required this.floodCessAmount,
    required this.gstAddCessAmount,
    required this.gstAddCessAmountTotal,
    required this.itemCount,
    required this.itemQuantityWithDamage,
    required this.itemDamagePerCount,
    required this.itemTotalDamage,
    required this.directSchemeHeadNumber,
    required this.showStock,
    required this.averageCost,
  });

  factory TransDetailServer.fromJson(Map<String, dynamic> json) =>
      TransDetailServer(
        addedRow: json["AddedRow"],
        siNo: json["SINo"],
        transDetailsNumber: json["TransDetailsNumber"],
        stockValidation: json["StockValidation"],
        seriesTypeNumber: json["SeriesTypeNumber"],
        transHeadNumber: json["TransHeadNumber"],
        itemBatchNumber: json["ItemBatchNumber"],
        createItemBatch: json["CreateItemBatch"],
        unitNumber: json["UnitNumber"],
        itemUnitNumber: json["ItemUnitNumber"],
        currencyRate: json["CurrencyRate"],
        maxRetailPrice: json["MaxRetailPrice"],
        itemUnitPriceCurrency: json["ItemUnitPriceCurrency"],
        itemUnitPriceDecimal: json["ItemUnitPriceDecimal"],
        itemUnitPrice: json["ItemUnitPrice"],
        itemUnitPriceGridView: json["ItemUnitPriceGridView"],
        itemUnitPriceExpense: json["ItemUnitPriceExpense"],
        itemUnitPriceTax: json["ItemUnitPriceTax"],
        itemAgentRate: json["ItemAgentRate"],
        itemAgentAmount: json["ItemAgentAmount"],
        itemNetUnitPrice: json["ItemNetUnitPrice"],
        itemNetUnitPriceGridView: json["ItemNetUnitPriceGridView"],
        itemPhysicalQuantity: json["ItemPhysicalQuantity"],
        itemSaleQuantity: json["ItemSaleQuantity"],
        itemQuantity: json["ItemQuantity"],
        discountQuantity: json["DiscountQuantity"],
        itemTotalQuantity: json["ItemTotalQuantity"],
        itemImportQty: json["ItemImportQty"],
        itemGrossAmount: json["ItemGrossAmount"],
        itemDiscRate: json["ItemDiscRate"],
        itemDiscAmount: json["ItemDiscAmount"],
        itemExtraDiscountRate: json["ItemExtraDiscountRate"],
        itemExtraDiscountAmount: json["ItemExtraDiscountAmount"],
        specialDiscRate: json["SpecialDiscRate"],
        specialDiscAmount: json["SpecialDiscAmount"],
        itemNetAmount: json["ItemNetAmount"],
        itemTaxRate: json["ItemTaxRate"],
        itemMasterTaxRate: json["ItemMasterTaxRate"],
        commodityCode: json["CommodityCode"],
        commodityName: json["CommodityName"],
        itemTaxAmount: json["ItemTaxAmount"],
        blnEditTaxAmount: json["blnEditTaxAmount"],
        itemCessRate: json["ItemCessRate"],
        itemCessAmount: json["ItemCessAmount"],
        transDiscRate: json["TransDiscRate"],
        transDiscAmount: json["TransDiscAmount"],
        itemTotalAmount: json["ItemTotalAmount"],
        itemNetRate: json["ItemNetRate"],
        itemCostPrice: json["ItemCostPrice"],
        itemTaxablePostingAmount: json["ItemTaxablePostingAmount"],
        itemCostPriceTemp: json["ItemCostPriceTemp"],
        itemCostPricePpTemp: json["ItemCostPricePPTemp"],
        itemMrpTemp: json["ItemMRPTemp"],
        itemDiscAmountTemp: json["ItemDiscAmountTemp"],
        itemDiscRateTemp: json["ItemDiscRateTemp"],
        gstRateTemp: json["GSTRateTemp"],
        gstCessRateTemp: json["GSTCessRateTemp"],
        gstAddCessAmountTemp: json["GSTAddCessAmountTemp"],
        wastageRateTemp: json["WastageRateTemp"],
        packingExpenseTemp: json["PackingExpenseTemp"],
        itemGrossAmountTemp: json["ItemGrossAmountTemp"],
        floodCessRateTemp: json["FloodCessRateTemp"],
        itemDescription: json["ItemDescription"],
        itemRemarks: json["ItemRemarks"],
        volumeNumber: json["VolumeNumber"],
        itemVolume: json["ItemVolume"],
        itemReferenceCode: json["ItemReferenceCode"],
        itemQuantityBasic: json["ItemQuantityBasic"],
        weight: json["Weight"],
        totalWeight: json["TotalWeight"],
        netWeight: json["NetWeight"],
        totalNetWeight: json["TotalNetWeight"],
        itemTaxRatePosting: json["ItemTaxRatePosting"],
        volumeQuantity: json["VolumeQuantity"],
        isLastEditDiscRate: json["IsLastEditDiscRate"],
        isBatchBarcode: json["ISBatchBarcode"],
        itemTransAgentAmount: json["ItemTransAgentAmount"],
        itemSalesCommissionRate: json["ItemSalesCommissionRate"],
        itemSalesCommissionAmount: json["ItemSalesCommissionAmount"],
        itemTransSalesCommissionAmount: json["ItemTransSalesCommissionAmount"],
        itemExpenseRate: json["ItemExpenseRate"],
        itemExpenseAmount: json["ItemExpenseAmount"],
        itemOtherExpenseRate: json["ItemOtherExpenseRate"],
        itemOtherExpenseAmount: json["ItemOtherExpenseAmount"],
        itemTransactionPrice: json["ItemTransactionPrice"],
        itemDescriptionMultiline: json["ItemDescriptionMultiline"],
        itemNumber: json["ItemNumber"],
        preBatchNumber: json["PreBatchNumber"],
        preItemNumber: json["PreItemNumber"],
        itemBatchCode: json["ItemBatchCode"],
        itemBatchName: json["ItemBatchName"],
        itemCodeNumber: json["ItemCodeNumber"],
        itemCode: json["ItemCode"],
        itemBarCode: json["ItemBarCode"],
        itemEanCode: json["ItemEanCode"],
        itemName: json["ItemName"],
        hsnNumber: json["HSNNumber"],
        hsnCode: json["HSNCode"],
        hsnName: json["HSNName"],
        unitName: json["UnitName"],
        unitTypeNumber: json["UnitTypeNumber"],
        unitNumberBasic: json["UnitNumberBasic"],
        unitNameBasic: json["UnitNameBasic"],
        isFind: json["IsFind"],
        packingExpense: json["PackingExpense"],
        wastageRate: json["WastageRate"],
        wastageQuantity: json["WastageQuantity"],
        itemHandlingChargesPerQty: json["ItemHandlingChargesPerQty"],
        itemHandlingCharges: json["ItemHandlingCharges"],
        itemHandlingChargeException: json["ItemHandlingChargeException"],
        priceTypeNumber: json["PriceTypeNumber"],
        priceGroupCalculation: json["PriceGroupCalculation"],
        itemMultiBarcode: json["ItemMultiBarcode"],
        basicUnitQty: json["BasicUnitQty"],
        higherUnitQty: json["HigherUnitQty"],
        offerMessage: json["OfferMessage"],
        offerRemarks: json["OfferRemarks"],
        masterItemCode: json["MasterItemCode"],
        transTypeNumber: json["TransTypeNumber"],
        stockPointNumber: json["StockPointNumber"],
        stockPointNameFrom: json["StockPointNameFrom"],
        stockPointNameTo: json["StockPointNameTo"],
        stockPointNumberTo: json["StockPointNumberTo"],
        stockPointNumberFrom: json["StockPointNumberFrom"],
        accHeadNumberItem: json["AccHeadNumberItem"],
        accHeadNumberTax: json["AccHeadNumberTax"],
        accHeadNumberSgst: json["AccHeadNumberSGST"],
        accHeadNameSgst: json["AccHeadNameSGST"],
        itemLocationNumber: json["ItemLocationNumber"],
        accHeadNumberSalesman: json["AccHeadNumberSalesman"],
        salesManName: json["SalesManName"],
        manufactureName: json["ManufactureName"],
        stockpointName: json["StockpointName"],
        locationName: json["LocationName"],
        accHeadNumber: json["AccHeadNumber"],
        transactionNumber: json["TransactionNumber"],
        itemPoint: json["ItemPoint"],
        itemGroupPointFactor: json["ItemGroupPointFactor"],
        itemGroupPoint: json["ItemGroupPoint"],
        isGodownItem: json["IsGodownItem"],
        allowPriceEdit: json["AllowPriceEdit"],
        allowZeroPrice: json["AllowZeroPrice"],
        allowPriceLessThanCost: json["AllowPriceLessThanCost"],
        allowPriceLessThanMop: json["AllowPriceLessThanMOP"],
        allowPriceGraterThanMrp: json["AllowPriceGraterThanMRP"],
        allowZeroQuantity: json["AllowZeroQuantity"],
        allowNegativeQty: json["AllowNegativeQty"],
        allowNegativeStock: json["AllowNegativeStock"],
        allowItemRepeation: json["AllowItemRepeation"],
        validateExpDate: json["ValidateExpDate"],
        expiryDateInfo: json["ExpiryDateInfo"],
        batchExpiryDate: json["BatchExpiryDate"],
        validateManufacturingDate: json["ValidateManufacturingDate"],
        manufacturingDateInfo: json["ManufacturingDateInfo"],
        manufacturingDate: json["ManufacturingDate"],
        bestBeforeDays: json["BestBeforeDays"],
        batchBehaviour: json["BatchBehaviour"],
        stopItemDeal: json["StopItemDeal"],
        isStopItemDeal: json["IsStopItemDeal"],
        allowQuantityEdit: json["AllowQuantityEdit"],
        seriesNumber: json["SeriesNumber"],
        vanNumber: json["VanNumber"],
        costProportion: json["CostProportion"],
        itemAgentRateAfterNetAmount: json["ItemAgentRateAfterNetAmount"],
        itemAgentAmountAfterNetAmount: json["ItemAgentAmountAfterNetAmount"],
        itemCommRateAfterNetAmount: json["ItemCommRateAfterNetAmount"],
        itemCommAmountAfterNetAmount: json["ItemCommAmountAfterNetAmount"],
        isItemUpdatePrice: json["ISItemUpdatePrice"],
        marginRate: json["MarginRate"],
        marginPrice: json["MarginPrice"],
        itemGroupNumber: json["ItemGroupNumber"],
        excludedGroupItemPrintSiNo: json["ExcludedGroupItemPrintSINo"],
        itemGroupName: json["ItemGroupName"],
        salesAccountName: json["SalesAccountName"],
        taxAccountName: json["TaxAccountName"],
        fixOldPrice: json["FixOldPrice"],
        costChangedWarning: json["CostChangedWarning"],
        avoidPointCalculation: json["AvoidPointCalculation"],
        higherUnitQtyDbl: json["HigherUnitQtyDbl"],
        lowerUnitQty: json["LowerUnitQty"],
        stockValue: json["StockValue"],
        itemStockBasic: json["ItemStockBasic"],
        appliedScheme: json["AppliedScheme"],
        schemeNumber: json["SchemeNumber"],
        schemeCode: json["SchemeCode"],
        schemeName: json["SchemeName"],
        memberNumber: json["MemberNumber"],
        isVatCustomer: json["IsVATCustomer"],
        isPriceEdit: json["ISPriceEdit"],
        ismprEdit: json["ISMPREdit"],
        basicMarginRate: json["BasicMarginRate"],
        transPosDetailsNumber: json["TransPosDetailsNumber"],
        deleteItem: json["DeleteItem"],
        isQuantityPriceType: json["ISQuantityPriceType"],
        volumeName: json["VolumeName"],
        viewImage: json["ViewImage"],
        schemeNumberFrom: json["SchemeNumberFrom"],
        itemCodeEntryType: json["ItemCodeEntryType"],
        qtyPerPacket: json["QtyPerPacket"],
        qtyPerCarton: json["QtyPerCarton"],
        totalPacket: json["TotalPacket"],
        totalCarton: json["TotalCarton"],
        itemVolumeQuantity: json["ItemVolumeQuantity"],
        itemTaxRateChanging: json["ItemTaxRateChanging"],
        gstAddCessAmountChanging: json["GSTAddCessAmountChanging"],
        gstAddCessAmountTotalChanging: json["GSTAddCessAmountTotalChanging"],
        itemTaxAmountChanging: json["ItemTaxAmountChanging"],
        itemGstRateChanging: json["ItemGSTRateChanging"],
        itemGstAmountChanging: json["ItemGSTAmountChanging"],
        gstRate: json["GSTRate"],
        gstAmount: json["GSTAmount"],
        sgstRate: json["SGSTRate"],
        sgstAmount: json["SGSTAmount"],
        cgstRate: json["CGSTRate"],
        cgstAmount: json["CGSTAmount"],
        igstRate: json["IGSTRate"],
        igstAmount: json["IGSTAmount"],
        gstCessRate: json["GSTCessRate"],
        gstCessAmount: json["GSTCessAmount"],
        sqrMeter: json["SqrMeter"],
        length: json["Length"],
        width: json["Width"],
        itemPrefix: json["ItemPrefix"],
        itemGroup: json["ItemGroup"],
        categoryGroup: json["CategoryGroup"],
        sizeGroup: json["SizeGroup"],
        colorGroup: json["ColorGroup"],
        currencyTotal: json["CurrencyTotal"],
        nosInPacket: json["NosInPacket"],
        nosInCase: json["NosInCase"],
        isPreviousPurchase: json["IsPreviousPurchase"],
        itemTotalAmountPrev: json["ItemTotalAmountPrev"],
        itemStockMinQty: json["ItemStockMinQty"],
        itemSchemeNumber: json["ItemSchemeNumber"],
        accHeadNumberItemScheme: json["AccHeadNumberItemScheme"],
        itemSchemeCalculationType: json["ItemSchemeCalculationType"],
        itemSchemeDiscAmountPerQty: json["ItemSchemeDiscAmountPerQty"],
        itemSchemeMinimumQty: json["ItemSchemeMinimumQty"],
        floodCessRate: json["FloodCessRate"],
        floodCessAmount: json["FloodCessAmount"],
        gstAddCessAmount: json["GSTAddCessAmount"],
        gstAddCessAmountTotal: json["GSTAddCessAmountTotal"],
        itemCount: json["ItemCount"],
        itemQuantityWithDamage: json["ItemQuantityWithDamage"],
        itemDamagePerCount: json["ItemDamagePerCount"],
        itemTotalDamage: json["ItemTotalDamage"],
        directSchemeHeadNumber: json["DirectSchemeHeadNumber"],
        showStock: json["ShowStock"],
        averageCost: json["AverageCost"],
      );

  Map<String, dynamic> toJson() => {
        "AddedRow": addedRow,
        "SINo": siNo,
        "TransDetailsNumber": transDetailsNumber,
        "StockValidation": stockValidation,
        "SeriesTypeNumber": seriesTypeNumber,
        "TransHeadNumber": transHeadNumber,
        "ItemBatchNumber": itemBatchNumber,
        "CreateItemBatch": createItemBatch,
        "UnitNumber": unitNumber,
        "ItemUnitNumber": itemUnitNumber,
        "CurrencyRate": currencyRate,
        "MaxRetailPrice": maxRetailPrice,
        "ItemUnitPriceCurrency": itemUnitPriceCurrency,
        "ItemUnitPriceDecimal": itemUnitPriceDecimal,
        "ItemUnitPrice": itemUnitPrice,
        "ItemUnitPriceGridView": itemUnitPriceGridView,
        "ItemUnitPriceExpense": itemUnitPriceExpense,
        "ItemUnitPriceTax": itemUnitPriceTax,
        "ItemAgentRate": itemAgentRate,
        "ItemAgentAmount": itemAgentAmount,
        "ItemNetUnitPrice": itemNetUnitPrice,
        "ItemNetUnitPriceGridView": itemNetUnitPriceGridView,
        "ItemPhysicalQuantity": itemPhysicalQuantity,
        "ItemSaleQuantity": itemSaleQuantity,
        "ItemQuantity": itemQuantity,
        "DiscountQuantity": discountQuantity,
        "ItemTotalQuantity": itemTotalQuantity,
        "ItemImportQty": itemImportQty,
        "ItemGrossAmount": itemGrossAmount,
        "ItemDiscRate": itemDiscRate,
        "ItemDiscAmount": itemDiscAmount,
        "ItemExtraDiscountRate": itemExtraDiscountRate,
        "ItemExtraDiscountAmount": itemExtraDiscountAmount,
        "SpecialDiscRate": specialDiscRate,
        "SpecialDiscAmount": specialDiscAmount,
        "ItemNetAmount": itemNetAmount,
        "ItemTaxRate": itemTaxRate,
        "ItemMasterTaxRate": itemMasterTaxRate,
        "CommodityCode": commodityCode,
        "CommodityName": commodityName,
        "ItemTaxAmount": itemTaxAmount,
        "blnEditTaxAmount": blnEditTaxAmount,
        "ItemCessRate": itemCessRate,
        "ItemCessAmount": itemCessAmount,
        "TransDiscRate": transDiscRate,
        "TransDiscAmount": transDiscAmount,
        "ItemTotalAmount": itemTotalAmount,
        "ItemNetRate": itemNetRate,
        "ItemCostPrice": itemCostPrice,
        "ItemTaxablePostingAmount": itemTaxablePostingAmount,
        "ItemCostPriceTemp": itemCostPriceTemp,
        "ItemCostPricePPTemp": itemCostPricePpTemp,
        "ItemMRPTemp": itemMrpTemp,
        "ItemDiscAmountTemp": itemDiscAmountTemp,
        "ItemDiscRateTemp": itemDiscRateTemp,
        "GSTRateTemp": gstRateTemp,
        "GSTCessRateTemp": gstCessRateTemp,
        "GSTAddCessAmountTemp": gstAddCessAmountTemp,
        "WastageRateTemp": wastageRateTemp,
        "PackingExpenseTemp": packingExpenseTemp,
        "ItemGrossAmountTemp": itemGrossAmountTemp,
        "FloodCessRateTemp": floodCessRateTemp,
        "ItemDescription": itemDescription,
        "ItemRemarks": itemRemarks,
        "VolumeNumber": volumeNumber,
        "ItemVolume": itemVolume,
        "ItemReferenceCode": itemReferenceCode,
        "ItemQuantityBasic": itemQuantityBasic,
        "Weight": weight,
        "TotalWeight": totalWeight,
        "NetWeight": netWeight,
        "TotalNetWeight": totalNetWeight,
        "ItemTaxRatePosting": itemTaxRatePosting,
        "VolumeQuantity": volumeQuantity,
        "IsLastEditDiscRate": isLastEditDiscRate,
        "ISBatchBarcode": isBatchBarcode,
        "ItemTransAgentAmount": itemTransAgentAmount,
        "ItemSalesCommissionRate": itemSalesCommissionRate,
        "ItemSalesCommissionAmount": itemSalesCommissionAmount,
        "ItemTransSalesCommissionAmount": itemTransSalesCommissionAmount,
        "ItemExpenseRate": itemExpenseRate,
        "ItemExpenseAmount": itemExpenseAmount,
        "ItemOtherExpenseRate": itemOtherExpenseRate,
        "ItemOtherExpenseAmount": itemOtherExpenseAmount,
        "ItemTransactionPrice": itemTransactionPrice,
        "ItemDescriptionMultiline": itemDescriptionMultiline,
        "ItemNumber": itemNumber,
        "PreBatchNumber": preBatchNumber,
        "PreItemNumber": preItemNumber,
        "ItemBatchCode": itemBatchCode,
        "ItemBatchName": itemBatchName,
        "ItemCodeNumber": itemCodeNumber,
        "ItemCode": itemCode,
        "ItemBarCode": itemBarCode,
        "ItemEanCode": itemEanCode,
        "ItemName": itemName,
        "HSNNumber": hsnNumber,
        "HSNCode": hsnCode,
        "HSNName": hsnName,
        "UnitName": unitName,
        "UnitTypeNumber": unitTypeNumber,
        "UnitNumberBasic": unitNumberBasic,
        "UnitNameBasic": unitNameBasic,
        "IsFind": isFind,
        "PackingExpense": packingExpense,
        "WastageRate": wastageRate,
        "WastageQuantity": wastageQuantity,
        "ItemHandlingChargesPerQty": itemHandlingChargesPerQty,
        "ItemHandlingCharges": itemHandlingCharges,
        "ItemHandlingChargeException": itemHandlingChargeException,
        "PriceTypeNumber": priceTypeNumber,
        "PriceGroupCalculation": priceGroupCalculation,
        "ItemMultiBarcode": itemMultiBarcode,
        "BasicUnitQty": basicUnitQty,
        "HigherUnitQty": higherUnitQty,
        "OfferMessage": offerMessage,
        "OfferRemarks": offerRemarks,
        "MasterItemCode": masterItemCode,
        "TransTypeNumber": transTypeNumber,
        "StockPointNumber": stockPointNumber,
        "StockPointNameFrom": stockPointNameFrom,
        "StockPointNameTo": stockPointNameTo,
        "StockPointNumberTo": stockPointNumberTo,
        "StockPointNumberFrom": stockPointNumberFrom,
        "AccHeadNumberItem": accHeadNumberItem,
        "AccHeadNumberTax": accHeadNumberTax,
        "AccHeadNumberSGST": accHeadNumberSgst,
        "AccHeadNameSGST": accHeadNameSgst,
        "ItemLocationNumber": itemLocationNumber,
        "AccHeadNumberSalesman": accHeadNumberSalesman,
        "SalesManName": salesManName,
        "ManufactureName": manufactureName,
        "StockpointName": stockpointName,
        "LocationName": locationName,
        "AccHeadNumber": accHeadNumber,
        "TransactionNumber": transactionNumber,
        "ItemPoint": itemPoint,
        "ItemGroupPointFactor": itemGroupPointFactor,
        "ItemGroupPoint": itemGroupPoint,
        "IsGodownItem": isGodownItem,
        "AllowPriceEdit": allowPriceEdit,
        "AllowZeroPrice": allowZeroPrice,
        "AllowPriceLessThanCost": allowPriceLessThanCost,
        "AllowPriceLessThanMOP": allowPriceLessThanMop,
        "AllowPriceGraterThanMRP": allowPriceGraterThanMrp,
        "AllowZeroQuantity": allowZeroQuantity,
        "AllowNegativeQty": allowNegativeQty,
        "AllowNegativeStock": allowNegativeStock,
        "AllowItemRepeation": allowItemRepeation,
        "ValidateExpDate": validateExpDate,
        "ExpiryDateInfo": expiryDateInfo,
        "BatchExpiryDate": batchExpiryDate,
        "ValidateManufacturingDate": validateManufacturingDate,
        "ManufacturingDateInfo": manufacturingDateInfo,
        "ManufacturingDate": manufacturingDate,
        "BestBeforeDays": bestBeforeDays,
        "BatchBehaviour": batchBehaviour,
        "StopItemDeal": stopItemDeal,
        "IsStopItemDeal": isStopItemDeal,
        "AllowQuantityEdit": allowQuantityEdit,
        "SeriesNumber": seriesNumber,
        "VanNumber": vanNumber,
        "CostProportion": costProportion,
        "ItemAgentRateAfterNetAmount": itemAgentRateAfterNetAmount,
        "ItemAgentAmountAfterNetAmount": itemAgentAmountAfterNetAmount,
        "ItemCommRateAfterNetAmount": itemCommRateAfterNetAmount,
        "ItemCommAmountAfterNetAmount": itemCommAmountAfterNetAmount,
        "ISItemUpdatePrice": isItemUpdatePrice,
        "MarginRate": marginRate,
        "MarginPrice": marginPrice,
        "ItemGroupNumber": itemGroupNumber,
        "ExcludedGroupItemPrintSINo": excludedGroupItemPrintSiNo,
        "ItemGroupName": itemGroupName,
        "SalesAccountName": salesAccountName,
        "TaxAccountName": taxAccountName,
        "FixOldPrice": fixOldPrice,
        "CostChangedWarning": costChangedWarning,
        "AvoidPointCalculation": avoidPointCalculation,
        "HigherUnitQtyDbl": higherUnitQtyDbl,
        "LowerUnitQty": lowerUnitQty,
        "StockValue": stockValue,
        "ItemStockBasic": itemStockBasic,
        "AppliedScheme": appliedScheme,
        "SchemeNumber": schemeNumber,
        "SchemeCode": schemeCode,
        "SchemeName": schemeName,
        "MemberNumber": memberNumber,
        "IsVATCustomer": isVatCustomer,
        "ISPriceEdit": isPriceEdit,
        "ISMPREdit": ismprEdit,
        "BasicMarginRate": basicMarginRate,
        "TransPosDetailsNumber": transPosDetailsNumber,
        "DeleteItem": deleteItem,
        "ISQuantityPriceType": isQuantityPriceType,
        "VolumeName": volumeName,
        "ViewImage": viewImage,
        "SchemeNumberFrom": schemeNumberFrom,
        "ItemCodeEntryType": itemCodeEntryType,
        "QtyPerPacket": qtyPerPacket,
        "QtyPerCarton": qtyPerCarton,
        "TotalPacket": totalPacket,
        "TotalCarton": totalCarton,
        "ItemVolumeQuantity": itemVolumeQuantity,
        "ItemTaxRateChanging": itemTaxRateChanging,
        "GSTAddCessAmountChanging": gstAddCessAmountChanging,
        "GSTAddCessAmountTotalChanging": gstAddCessAmountTotalChanging,
        "ItemTaxAmountChanging": itemTaxAmountChanging,
        "ItemGSTRateChanging": itemGstRateChanging,
        "ItemGSTAmountChanging": itemGstAmountChanging,
        "GSTRate": gstRate,
        "GSTAmount": gstAmount,
        "SGSTRate": sgstRate,
        "SGSTAmount": sgstAmount,
        "CGSTRate": cgstRate,
        "CGSTAmount": cgstAmount,
        "IGSTRate": igstRate,
        "IGSTAmount": igstAmount,
        "GSTCessRate": gstCessRate,
        "GSTCessAmount": gstCessAmount,
        "SqrMeter": sqrMeter,
        "Length": length,
        "Width": width,
        "ItemPrefix": itemPrefix,
        "ItemGroup": itemGroup,
        "CategoryGroup": categoryGroup,
        "SizeGroup": sizeGroup,
        "ColorGroup": colorGroup,
        "CurrencyTotal": currencyTotal,
        "NosInPacket": nosInPacket,
        "NosInCase": nosInCase,
        "IsPreviousPurchase": isPreviousPurchase,
        "ItemTotalAmountPrev": itemTotalAmountPrev,
        "ItemStockMinQty": itemStockMinQty,
        "ItemSchemeNumber": itemSchemeNumber,
        "AccHeadNumberItemScheme": accHeadNumberItemScheme,
        "ItemSchemeCalculationType": itemSchemeCalculationType,
        "ItemSchemeDiscAmountPerQty": itemSchemeDiscAmountPerQty,
        "ItemSchemeMinimumQty": itemSchemeMinimumQty,
        "FloodCessRate": floodCessRate,
        "FloodCessAmount": floodCessAmount,
        "GSTAddCessAmount": gstAddCessAmount,
        "GSTAddCessAmountTotal": gstAddCessAmountTotal,
        "ItemCount": itemCount,
        "ItemQuantityWithDamage": itemQuantityWithDamage,
        "ItemDamagePerCount": itemDamagePerCount,
        "ItemTotalDamage": itemTotalDamage,
        "DirectSchemeHeadNumber": directSchemeHeadNumber,
        "ShowStock": showStock,
        "AverageCost": averageCost,
      };
}
