'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class doctors_has_departments extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      doctors_has_departments.belongsTo(models.doctors,{foreignKey:'doctor_id'});
      doctors_has_departments.belongsTo(models.doctor_departments,{foreignKey:'department_id'})
    }
  }
  doctors_has_departments.init({
    doctor_id: DataTypes.INTEGER,
    department_id: DataTypes.INTEGER
  }, {
    sequelize,
    modelName: 'doctors_has_departments',
    paranoid:true
  });
  return doctors_has_departments;
};