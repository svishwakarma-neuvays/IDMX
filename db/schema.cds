namespace idb;

entity material {
    Sno                       : Int64  ;
    Material                  : String(50);
    MaterialType              : String(50);
    IndustrySector            : String(50);
    Description               : String(500);
    BaseUnitOfMeasure         : String(20);
    MaterialGroup             : String(50);
    WeightUnit                : String(50);
    Plant                     : String(50);
    StorageLocation           : String(100);
    PurchasingGroup           : String(100);
    BatchManagement           : Boolean;
    AutomaticPO               : Boolean;
    GRProcessingTime          : Time;
    valuationClass            : String(50);
    PriceControl              : String(50);
    MovingPrice_StandardPrice : String(50);
    SalesOrganisation         : String(50);
    DistributionChannel       : String(50);
    Division                  : String(50);
    AccountAssignmentGroup    : String(50);
    ItemCategoryGroup         : String(50);
    AvailabilityCheck         : String(50);
    LoadingGroup              : String(50);
    TransportationGroup       : String(50);
    MRPGroup                  : String(50);
    MRPType                   : String(50);
    MRPController             : String(50);
    LotSizingProcedure        : String(50);
    MinLotSize                : String(50);
    MaxLotSize                : String(50);
    ProcurementType           : String(50);
    MRP2GRProcessingTime      : Time;
    MRP3AvailabilityCheck     : String(50);
    InspectionInterval        : String(50);
    QMControlKey              : String(50);

}