'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class doctor_sessions extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      doctor_sessions.belongsTo(models.doctors,{foreignKey:'doctor_id'})
    }
  }
  doctor_sessions.init({
  doctor_id: DataTypes.INTEGER,
    sessions: DataTypes.STRING
  }, {
    sequelize,
    modelName: 'doctor_sessions',
    paranoid:true
  });
  return doctor_sessions;
};