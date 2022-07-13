class OrderWholesaleSelectProductbuttomModel {
  String? id;
  String? manufacturerId;
  String? sku;
  String? manufacturerSku;
  String? cola;
  String? bidcola;
  String? name;
  String? slug;
  String? priceSuggested;
  String? directImportPrice;
  String? diPrice;
  String? wholesalePrice;
  String? wholesalePriceSuggested;
  String? distributorPrice;
  String? distributorPriceSuggested;
  String? onHand;
  String? defaultRetailWarehouseId;
  String? defaultWholesaleWarehouseId;
  String? defaultTaxCodeId;
  String? weight;
  String? isBundle;
  String? itemsPerUnit;
  String? itemsPerCase;
  String? dateAvailable;
  String? isNew;
  String? dateCreated;
  String? modDt;
  String? inventoryStatus;
  String? productTypeId;
  String? isRetail;
  String? isWholesale;
  String? isDistributor;
  String? salesTargetOverwrite;
  String? specialSalesPercentage;
  String? excludedFromSalesVolume;
  String? isArchived;
  String? shopifyProductId;
  String? price;
  String? editStatus;
  ProductSpecs productSpecs;
  String? tag;
  String? description;
  String? manName;
  String? primaryimage;

  OrderWholesaleSelectProductbuttomModel(
      {this.id,
      this.manufacturerId,
      this.sku,
      this.manufacturerSku,
      this.cola,
      this.bidcola,
      this.name,
      this.slug,
      this.priceSuggested,
      this.directImportPrice,
      this.diPrice,
      this.wholesalePrice,
      this.wholesalePriceSuggested,
      this.distributorPrice,
      this.distributorPriceSuggested,
      this.onHand,
      this.defaultRetailWarehouseId,
      this.defaultWholesaleWarehouseId,
      this.defaultTaxCodeId,
      this.weight,
      this.isBundle,
      this.itemsPerUnit,
      this.itemsPerCase,
      this.dateAvailable,
      this.isNew,
      this.dateCreated,
      this.modDt,
      this.inventoryStatus,
      this.productTypeId,
      this.isRetail,
      this.isWholesale,
      this.isDistributor,
      this.salesTargetOverwrite,
      this.specialSalesPercentage,
      this.excludedFromSalesVolume,
      this.isArchived,
      this.shopifyProductId,
      this.price,
      this.editStatus,
      required this.productSpecs,
      this.tag,
      this.description,
      this.manName,
      this.primaryimage});

  factory OrderWholesaleSelectProductbuttomModel.fromJson(
          Map<String, dynamic> json) =>
      OrderWholesaleSelectProductbuttomModel(
        id: json['id'],
        manufacturerId: json['manufacturer_id'],
        sku: json['sku'],
        manufacturerSku: json['manufacturer_sku'],
        cola: json['cola'],
        bidcola: json['bidcola'],
        name: json['name'],
        slug: json['slug'],
        priceSuggested: json['price_suggested'],
        directImportPrice: json['direct_import_price'],
        diPrice: json['di_price'],
        wholesalePrice: json['wholesale_price'],
        wholesalePriceSuggested: json['wholesale_price_suggested'],
        distributorPrice: json['distributor_price'],
        distributorPriceSuggested: json['distributor_price_suggested'],
        onHand: json['on_hand'],
        defaultRetailWarehouseId: json['default_retail_warehouse_id'],
        defaultWholesaleWarehouseId: json['default_wholesale_warehouse_id'],
        defaultTaxCodeId: json['default_tax_code_id'],
        weight: json['weight'],
        isBundle: json['is_bundle'],
        itemsPerUnit: json['items_per_unit'],
        itemsPerCase: json['items_per_case'],
        dateAvailable: json['date_available'],
        isNew: json['is_new'],
        dateCreated: json['date_created'],
        modDt: json['mod_dt'],
        inventoryStatus: json['inventory_status'],
        productTypeId: json['product_type_id'],
        isRetail: json['is_retail'],
        isWholesale: json['is_wholesale'],
        isDistributor: json['is_distributor'],
        salesTargetOverwrite: json['sales_target_overwrite'],
        specialSalesPercentage: json['special_sales_percentage'],
        excludedFromSalesVolume: json['excluded_from_sales_volume'],
        isArchived: json['is_archived'],
        shopifyProductId: json['shopify_product_id'],
        price: json['price'],
        editStatus: json['edit_status'],
        productSpecs: ProductSpecs.fromJson(json['product_specs']),
        tag: json['tag'],
        description: json['description'],
        manName: json['man_name'],
        primaryimage: json['primaryimage'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'manufacturer_id': manufacturerId,
        'sku': sku,
        'manufacturer_sku': manufacturerSku,
        'cola': cola,
        'bidcola': bidcola,
        'name': name,
        'slug': slug,
        'price_suggested': priceSuggested,
        'direct_import_price': directImportPrice,
        'di_price': diPrice,
        'wholesale_price': wholesalePrice,
        'wholesale_price_suggested': wholesalePriceSuggested,
        'distributor_price': distributorPrice,
        'distributor_price_suggested': distributorPriceSuggested,
        'on_hand': onHand,
        'default_retail_warehouse_id': defaultRetailWarehouseId,
        'default_wholesale_warehouse_id': defaultWholesaleWarehouseId,
        'default_tax_code_id': defaultTaxCodeId,
        'weight': weight,
        'is_bundle': isBundle,
        'items_per_unit': itemsPerUnit,
        'items_per_case': itemsPerCase,
        'date_available': dateAvailable,
        'is_new': isNew,
        'date_created': dateCreated,
        'mod_dt': modDt,
        'inventory_status': inventoryStatus,
        'product_type_id': productTypeId,
        'is_retail': isRetail,
        'is_wholesale': isWholesale,
        'is_distributor': isDistributor,
        'sales_target_overwrite': salesTargetOverwrite,
        'special_sales_percentage': specialSalesPercentage,
        'excluded_from_sales_volume': excludedFromSalesVolume,
        'is_archived': isArchived,
        'shopify_product_id': shopifyProductId,
        'price': price,
        'edit_status': editStatus,
        'product_specs': productSpecs.toJson(),
        'tag': tag,
        'description': description,
        'man_name': manName,
        'primaryimage': primaryimage,
      };
}

class ProductSpecs {
  String? productId;
  String? residualSugar;
  String? alcohol;
  String? acidity;
  String? closure;
  String? primaryFermentation;
  String? secondaryFermentation;
  String? aging;
  String? oakExposureMonths;
  String? yeasts;
  String? totalSulfur;
  String? disgorgement;
  String? bottleVolume;
  String? bottleVolumeUnits;
  String? cellarPotential;
  String? oldFoodPairing;
  String? farmingStandard;
  String? vineyard;
  String? soils;
  String? height;

  ProductSpecs(
      {this.productId,
      this.residualSugar,
      this.alcohol,
      this.acidity,
      this.closure,
      this.primaryFermentation,
      this.secondaryFermentation,
      this.aging,
      this.oakExposureMonths,
      this.yeasts,
      this.totalSulfur,
      this.disgorgement,
      this.bottleVolume,
      this.bottleVolumeUnits,
      this.cellarPotential,
      this.oldFoodPairing,
      this.farmingStandard,
      this.vineyard,
      this.soils,
      this.height});

  factory ProductSpecs.fromJson(Map<String, dynamic> json) => ProductSpecs(
        productId: json['product_id'],
        residualSugar: json['residual_sugar'],
        alcohol: json['alcohol'],
        acidity: json['acidity'],
        closure: json['closure'],
        primaryFermentation: json['primary_fermentation'],
        secondaryFermentation: json['secondary_fermentation'],
        aging: json['aging'],
        oakExposureMonths: json['oak_exposure_months'],
        yeasts: json['yeasts'],
        totalSulfur: json['total sulfur'],
        disgorgement: json['disgorgement'],
        bottleVolume: json['bottle_volume'],
        bottleVolumeUnits: json['bottle_volume_units'],
        cellarPotential: json['cellar_potential'],
        oldFoodPairing: json['old_food_pairing'],
        farmingStandard: json['farming_standard'],
        vineyard: json['vineyard'],
        soils: json['soils'],
        height: json['height'],
      );

  Map<String, dynamic> toJson() => {
        'product_id': productId,
        'residual_sugar': residualSugar,
        'alcohol': alcohol,
        'acidity': acidity,
        'closure': closure,
        'primary_fermentation': primaryFermentation,
        'secondary_fermentation': secondaryFermentation,
        'aging': aging,
        'oak_exposure_months': oakExposureMonths,
        'yeasts': yeasts,
        'total sulfur': totalSulfur,
        'disgorgement': disgorgement,
        'bottle_volume': bottleVolume,
        'bottle_volume_units': bottleVolumeUnits,
        'cellar_potential': cellarPotential,
        'old_food_pairing': oldFoodPairing,
        'farming_standard': farmingStandard,
        'vineyard': vineyard,
        'soils': soils,
        'height': height,
      };
}
