'use strict';
/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable('pharmacy_stores', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      name: {
        type: Sequelize.STRING
      },
      store_id:{
        type:Sequelize.INTEGER
      },
      owner_id:{
        type:Sequelize.INTEGER
      },
      license_no:{
        type:Sequelize.STRING
      },
      contact:{
        type:Sequelize.STRING
      },
      email:{
        type:Sequelize.STRING
      },
      address:{
        type:Sequelize.STRING
      },
      deletedAt: {
        defaultValue:null,
        type: Sequelize.DATE
      },
      createdAt: {
        allowNull: false,
        type: Sequelize.DATE
      },
      updatedAt: {
        allowNull: false,
        type: Sequelize.DATE
      }
    });

    queryInterface.addConstraint('pharmacy_stores',{
      fields:['owner_id'],
      type:'foreign key',
      references:{
        table:'pharmacy_store_owners',
        field:'id',
      },
      onDelete:'cascade',
      onUpdate:'cascade'
    });




  },
  async down(queryInterface, Sequelize) {
    await queryInterface.dropTable('pharmacy_stores');
  }
};