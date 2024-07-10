'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class medicine_details extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      medicine_details.belongsTo(models.medicine_companies,{foreignKey:'company_id'});
      medicine_details.belongsTo(models.medicine_categories,{foreignKey:'medicine_category_id'});
      medicine_details.belongsTo(models.medicine_category_subcategories,{foreignKey:'medicine_subcategory_id'});
      medicine_details.belongsTo(models.pharmacy_distribution_types,{foreignKey:'pharmacy_distribution_id'});

      // define association here
    }
  }
  medicine_details.init({
    name: DataTypes.STRING,
    description: DataTypes.STRING,
    price: DataTypes.FLOAT,
    company_id:DataTypes.INTEGER,
    medicine_category_id:DataTypes.INTEGER,
    medicine_subcategory_id:DataTypes.INTEGER,
    pharmacy_distribution_id:DataTypes.INTEGER,
    image:DataTypes.STRING

  }, {
    sequelize,
    modelName: 'medicine_details',
    paranoid:true
  });
  return medicine_details;
};