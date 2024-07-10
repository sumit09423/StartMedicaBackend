'use strict';
/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable('doctorhas_pharma_stores', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      doctor_id: {
        type: Sequelize.INTEGER
      },
      pharma_store_id: {
        type: Sequelize.INTEGER
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

    queryInterface.addConstraint('doctorhas_pharma_stores',{
      fields:['doctor_id'],
      type:'foreign key',
      name:'fk12',
      references:{
        table:'doctors',
        field:'id',
      },
      onDelete:'cascade',
      onUpdate:'cascade'
    });

    queryInterface.addConstraint('doctorhas_pharma_stores',{
      fields:['pharma_store_id'],
      type:'foreign key',
      name:'fk13',
      references:{
        table:'pharmacy_stores',
        field:'id',
      },
      onDelete:'cascade',
      onUpdate:'cascade'
    });
  },
  async down(queryInterface, Sequelize) {
    await queryInterface.dropTable('doctorhas_pharma_stores');
  }
};