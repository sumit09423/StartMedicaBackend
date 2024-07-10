'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class doctorhas_pharma_stores extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      doctorhas_pharma_stores.belongsTo(models.doctors,{foreignKey:"doctor_id"})
      doctorhas_pharma_stores.belongsTo(models.pharmacy_stores,{foreignKey:"pharma_store_id"})

    }
  }
  doctorhas_pharma_stores.init({
    doctor_id: DataTypes.INTEGER,
    pharma_store_id: DataTypes.INTEGER
  }, {
    sequelize,
    paranoid:true,
    modelName: 'doctorhas_pharma_stores',
  });
  return doctorhas_pharma_stores;
};