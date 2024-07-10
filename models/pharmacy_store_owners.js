'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class pharmacy_store_owners extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      pharmacy_store_owners.hasMany(models.pharmacy_stores,{foreignKey:'owner_id'})
      pharmacy_store_owners.hasMany(models.pharmacy_owner_sessions,{foreignKey:'pharmacy_owner_id'})
    }
  }
  pharmacy_store_owners.init({
    fname: DataTypes.STRING,
    lname:DataTypes.STRING,
    email:DataTypes.STRING,
    dob:DataTypes.DATE,
    gender:DataTypes.STRING,
    password:DataTypes.STRING,
    address:DataTypes.STRING,
    contact:DataTypes.STRING,
    profile:DataTypes.STRING

  }, {
    sequelize,
    modelName: 'pharmacy_store_owners',
    paranoid:true
  });
  return pharmacy_store_owners;
};
