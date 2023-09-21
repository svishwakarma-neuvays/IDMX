const cds = require('@sap/cds')
const fs = require("fs")
class services extends cds.ApplicationService {
    async init() {
        const db = await cds.connect.to("db");

        const { material } = cds.entities("idb");

        this.on('READ', 'materialReadData', async (req) => {
            let result = await SELECT.from(material);
            return result;
        })
        
        this.on('READ', 'materialWriteData', async (req) => {
            let approvedata = [
                {
                    Sno: 11,
                    Material: "Steel",
                    MaterialType: "Iron",
                    IndustrySector: "Hardware",
                    Description: "iron and steel",
                    BaseUnitOfMeasure: "work"
                },
                {
                    Sno: 12,
                    Material: "Steelll",
                    MaterialType: "Ironnn",
                    IndustrySector: "Hardwareee",
                    Description: "iron and steelll",
                    BaseUnitOfMeasure: "workkk"
                },
            ]

            for (let i = 0; i <= approvedata.length; i++) {
                await INSERT.into(material).
                    columns("Sno", "Material", "MaterialType", "IndustrySector", "Description", "BaseUnitOfMeasure")
                    .values(approvedata[i]["Sno"], approvedata[i]["Material"], approvedata[i]["IndustrySector"], approvedata[i]["Description"], approvedata[i]["BaseUnitOfMeasure"])
                    // .values(approvedata[i].Sno, approvedata[i].Material, approvedata[i].IndustrySector, approvedata[i].Description, approvedata[i].BaseUnitOfMeasure);

            }

            let result = await SELECT.from(material);
            return result;
        })
    }
}
module.exports = {services};