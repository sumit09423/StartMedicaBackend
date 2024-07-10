'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class doctor_departments extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      doctor_departments.hasMany(models.doctors_has_departments,{foreignKey:'department_id'})
    }
  }
  doctor_departments.init({
    name: DataTypes.STRING
  }, {
    sequelize,
    modelName: 'doctor_departments',
    paranoid:true
  });
  return doctor_departments;
};
