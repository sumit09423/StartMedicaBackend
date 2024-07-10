'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class medicine_category_subcategories extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      medicine_category_subcategories.hasMany(models.medicine_details,{foreignKey:'medicine_subcategory_id'})
    }
  }
  medicine_category_subcategories.init({
    name: DataTypes.STRING,
    description: DataTypes.STRING
  }, {
    sequelize,
    modelName: 'medicine_category_subcategories',
    paranoid:true
  });
  return medicine_category_subcategories;
};