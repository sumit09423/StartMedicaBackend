'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class pharmacy_stores extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association
      pharmacy_stores.belongsTo(models.pharmacy_store_owners,{foreignKey:'owner_id'})
      pharmacy_stores.hasMany(models.doctorhas_pharma_stores,{foreignKey:'pharma_id'})

      
    }
  }
  pharmacy_stores.init({
    name: DataTypes.STRING,
    store_id:DataTypes.INTEGER,
    owner_id:DataTypes.INTEGER,
    license_no:DataTypes.STRING,
    contact:DataTypes.STRING,
    email:DataTypes.STRING,
    address:DataTypes.STRING




  }, {
    sequelize,
    modelName: 'pharmacy_stores',
    paranoid:true
  });
  return pharmacy_stores;
};
