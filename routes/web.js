const web=require('express').Router();
const registerController=require('../controller/registerController');
const authMiddleware=require("../middleware/authMiddleware");
const guest=require("../middleware/guest");
const medicationController=require("../controller/medicationController");
const medicationFiles = require('../middleware/multer');
const logout = require('../controller/logout');
const demo=require("../controller/demo");
const dashboard = require('../controller/dashboard');
// const report = require('../controller/reportDisplay');
const password = require('../controller/password');
const doctorController = require('../controller/doctorController');
const doctorAuthMiddleware=require('../middleware/doctorAuthMiddleware')
const guestDoctor=require("../middleware/guestDoctor")
const doctorGetPhamrma=require("../controller/doctor/doctorGetPharma");
const doctorAddPhamrma=require("../controller/doctor/doctorAddPharma");


web.post('/adddoctor',doctorController().registerDoctor);
web.post('/doctorlogin',guestDoctor,doctorController().verifydoctor);

web.get('/doctorgetpharma',doctorController,doctorGetPhamrma().doctorAllPharma);
web.post('/doctoraddpharma',doctorController,doctorAddPhamrma().doctorPhamraAdd)





// const report = require('../controller/report');
web.get('/medicationone',authMiddleware,medicationController().medicationone);
web.get('/recurringmed',authMiddleware,medicationController().recurring)
web.get('/demo',demo().data);
// console.log(remainder().findmail);
web.get('/',guest,registerController().register);
web.post('/adduser',registerController().adduser);
web.get('/verifyuser?:gmail',guest,registerController().verifyuser)
web.post('/verifyotp',registerController().verifyotp)

web.get('/forgetpassword',password().forgetPassword)
web.post('/resetpassword',password().checkEmail);
web.get('/resetpassword/:gmail',password().newpage);
// web.get('/verifypassword',registerController().)
web.post('/resetpassword/updatepass/:pin',password().updatePass);

web.get('/login',guest,registerController().login);
web.post('/login',guest,registerController().loginUser)
web.get('/dashboard',authMiddleware,dashboard().allMedicine);
web.get("/newmed",authMiddleware,dashboard().newmed);
web.get("/medication",authMiddleware,registerController().medication);
// web.get("/reports",authMiddleware,report().reportDisplay);
// web.post("/reports/generatereport",authMiddleware,report().generateReport);
web.get("/logout", authMiddleware,logout().logout);
web.get("/logoutall",authMiddleware,logout().logoutAll);
web.get("/logoutother",authMiddleware,logout().logoutOther);
web.post('/recurring',authMiddleware,medicationFiles.single("onetimefile"),medicationController().recurringMedication);
web.post('/onetime',authMiddleware,medicationFiles.single("onetimefile"),medicationController().onetimeMedication);
module.exports = web;