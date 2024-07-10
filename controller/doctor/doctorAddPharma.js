// const db = require("../models/index");
const db = require("../../models");

const doctorAddPhama = () => {
  return {
    async doctorPhamraAdd(req, res) {
      try {
        let pharmaid = req.body.pharmaid;
        const addpharma = await db.sequelize.models.pharmacy_stores.findOne({
          where: {
            store_id: pharmaid,
          },
        });
        if (addpharma) {
          let data = {
            doctor_id: `${req.doctor}`,
            pharma_store_id: addpharma.id,
          };
          const adddata =
            await db.sequelize.models.doctorhas_pharma_stores.create(data);
          await adddata.save();
          res.status(200).send({ status: "Pharma Store Added Succesfully" });
        }
        else{
            return res.status(401).json({message:"Wrong Pharma id"})
        }
      } catch (error) {
        console.log(error);
      }
    },
  };
};

module.exports = doctorAddPhama;
