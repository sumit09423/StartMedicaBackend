'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class medicine_companies extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      medicine_companies.hasMany(models.medicine_details,{foreignKey:'company_id'})
    }
  }
  medicine_companies.init({
    name: DataTypes.STRING,
    description: DataTypes.STRING,
    contact: DataTypes.STRING,
    email: DataTypes.STRING,
    address: DataTypes.STRING,
    company_id: DataTypes.STRING
  }, {
    sequelize,
    modelName: 'medicine_companies',
    paranoid:true
  });
  return medicine_companies;
};