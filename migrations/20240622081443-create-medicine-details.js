'use strict';
/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable('medicine_details', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      name: {
        type: Sequelize.STRING
      },
      description: {
        type: Sequelize.STRING
      },
      price: {
        type: Sequelize.FLOAT
      },
      company_id:{
        type:Sequelize.INTEGER
      },
      medicine_category_id:{
        type:Sequelize.INTEGER
      },
      medicine_subcategory_id:{
        type:Sequelize.INTEGER
      },
      pharmacy_distribution_id:{
        type:Sequelize.INTEGER
      },
      image:{
        type:Sequelize.INTEGER
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
      },
      deletedAt: {
        defaultValue:null,
        type: Sequelize.DATE
      },
    });

    queryInterface.addConstraint('medicine_details',{
      fields:['company_id'],
      type:'foreign key',
      name:'fk6',
      references:{
        table:'medicine_companies',
        field:'id',
      },
      onDelete:'cascade',
      onUpdate:'cascade'
    });

    queryInterface.addConstraint('medicine_details',{
      fields:['medicine_category_id'],
      type:'foreign key',
      name:'fk7',
      references:{
        table:'medicine_categories',
        field:'id',
      },
      onDelete:'cascade',
      onUpdate:'cascade'
    });

    queryInterface.addConstraint('medicine_details',{
      fields:['medicine_subcategory_id'],
      name:'fk8',
      type:'foreign key',
      references:{
        table:'medicine_category_subcategories',
        field:'id',
      },
      onDelete:'cascade',
      onUpdate:'cascade'
    });

    queryInterface.addConstraint('medicine_details',{
      fields:['pharmacy_distribution_id'],
      type:'foreign key',
      name:'fk9',
      references:{
        table:'pharmacy_categories',
        field:'id',
      },
      onDelete:'cascade',
      onUpdate:'cascade'
    });
  },
  async down(queryInterface, Sequelize) {
    await queryInterface.dropTable('medicine_details');
  }
};