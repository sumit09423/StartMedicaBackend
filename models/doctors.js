'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class doctors extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      doctors.hasMany(models.doctors_has_departments,{foreignKey:'doctor_id'})
      doctors.hasMany(models.doctor_sessions,{foreignKey:'doctor_id'})
      doctors.hasMany(models.doctorhas_pharma_stores,{foreignKey:'doctor_id'})

      
    }
  }
  doctors.init({
    fname: DataTypes.STRING,
    lname: DataTypes.STRING,
    email: DataTypes.STRING,
    dob: DataTypes.DATE,
    gender: DataTypes.STRING,
    password: DataTypes.STRING,
    address: DataTypes.STRING,
    degree: DataTypes.STRING,
    license_no: DataTypes.STRING,
    profile:DataTypes.STRING,
    contact:DataTypes.STRING

  }, {
    sequelize,
    modelName: 'doctors',
    paranoid:true
  });
  return doctors;
};