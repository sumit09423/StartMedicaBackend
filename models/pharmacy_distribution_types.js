'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class pharmacy_distribution_types extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      pharmacy_distribution_types.hasMany(models.medicine_details,{foreignKey:'pharmacy_distribution_id'})
    }
  }
  // gynec, pediation, GP doctor
  pharmacy_distribution_types.init({
    name: DataTypes.STRING,
    description: DataTypes.STRING
  }, {
    sequelize,
    modelName: 'pharmacy_distribution_types',
    paranoid:true,
  });``
  return pharmacy_distribution_types;
};