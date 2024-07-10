'use strict';
/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable('doctors', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      fname: {
        type: Sequelize.STRING
      },
      lname:{
        type:Sequelize.STRING
      },
      email: {
        type: Sequelize.STRING
      },
      dob: {
        type: Sequelize.DATE
      },
      gender:{
        type:Sequelize.STRING
      },
      password: {
        type: Sequelize.STRING
      },
      address:{
        type:Sequelize.STRING
      },
      contact:{
        type:Sequelize.STRING
      },
      degree:{
        type:Sequelize.STRING
      },
      license_no:{
        type:Sequelize.STRING
      },
      profile:{
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

  },
  async down(queryInterface, Sequelize) {
    await queryInterface.dropTable('doctors');
  }
};