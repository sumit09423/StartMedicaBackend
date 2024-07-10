'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class pharmacy_owner_sessions extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      pharmacy_owner_sessions.belongsTo(models.pharmacy_store_owners,{foreignKey:'pharmacy_owner_id'})
    }
  }
  pharmacy_owner_sessions.init({
    pharmacy_owner_id: DataTypes.INTEGER,
    sessions: DataTypes.STRING
  }, {
    sequelize,
    modelName: 'pharmacy_owner_sessions',
    paranoid:true
  });
  return pharmacy_owner_sessions;
};