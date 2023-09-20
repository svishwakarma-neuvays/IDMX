using idb from '../db/schema';

service MyService {
    entity materialData as projection on idb.material;

    entity materialReadData{
        Sno                       : Int64  ;
        Material                  : String(50);
        MaterialType              : String(50);
        IndustrySector            : String(50);
        Description               : String(500);
        BaseUnitOfMeasure         : String(20);
    }
    entity materialWriteData {     
        Sno                       : Int64  ;
        Material                  : String(50);
        MaterialType              : String(50);
        IndustrySector            : String(50);
        Description               : String(500);
        BaseUnitOfMeasure         : String(20);
    }

}