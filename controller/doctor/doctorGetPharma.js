const db = require("../../models");
const { sequelize } = require("../../models");
// const db = require("../models/index");

const doctorGetPharma = () => {
  return {
    async doctorAllPharma(req, res) {
      try {
        const data = await db.sequelize.models.doctorhas_pharma_stores.findAll({
          where: { docotor_id: `${req.doctor}` },
        });

        if(data){
            res.status(200).send({ data });
        }else{
            return res.status(401).json({message:"No pharma store registered"})
        }
      } catch (error) {
        console.log(error);
      }
    },
  };
};

module.exports = doctorGetPharma;
