'use strict';
/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable('pharmacy_owner_sessions', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      pharmacy_owner_id: {
        type: Sequelize.INTEGER
      },
      sessions: {
        type: Sequelize.STRING
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

    queryInterface.addConstraint('pharmacy_owner_sessions',{
      fields:['pharmacy_owner_id'],
      type:'foreign key',
      name:'fk5',
      references:{
        table:'pharmacy_store_owners',
        field:'id',
      },
      onDelete:'cascade',
      onUpdate:'cascade'
    });

  },
  async down(queryInterface, Sequelize) {
    await queryInterface.dropTable('pharmacy_owner_sessions');
  }
};