const db = require("../models/index");
const { json } = require("sequelize");
const jwt = require("jsonwebtoken");
const mailServices = require("../services/mailServices");
const UserAgent = require("user-agents");
const bcrypt = require("bcrypt");
var randomstring = require("randomstring");
const otpGenerator = require("otp-generator");
// const category = require("../models/category");
const { doctors } = db;

const doctorController = () => {
  return {
    async registerDoctor(req, res) {
      try {
        console.log("i am in request");
        const emailcheck = await db.sequelize.models.doctors.findOne({
          where: { email: `${req.body.email}` },
        });
        if (emailcheck != null) {
          return res.status(401).json({ message: "Email Already Exists" });
        } else {
          const department =
            await db.sequelize.models.doctor_departments.findOne({
              where: { name: `${req.body.doctor_department}` },
            });
          const password = await bcrypt.hash(`${req.body.password}`, 5);

         
          const doctor = {
            fname: req.body.fname,
            lname: req.body.lname,
            email: req.body.email,
            dob: req.body.dob,
            gender: req.body.gender,
            contact: req.body.contact,
            license_no: req.body.doctor_licence_no,
            degree: req.body.degree,
            address: req.body.address,
            password: password,
            department_id: 1,
            // department_id: department.id?,
            profile: req.body.profile,
          };
          const data = await db.sequelize.models.doctors.create(doctor);
          res
            .status(200)
            .send(json({ message: "doctor registeres successfull" }));
        }
      } catch (error) {
        console.log(error);
      }
    },

    async verifydoctor(req, res) {
      try {
        console.log(req.body.email);
        const user = await db.sequelize.models.doctors.findOne({
          where: { email: req.body.email },
        });
        // console.log(user);
        if (user == null) {
          return res.status(401).json({ message: "Wrong Credentials" });
        } else if (user !== null) {

          console.log(req.body.password);
          let password = await bcrypt.compare(
            req.body.password,
            user.password
          );
          console.log(password);
          if (password == false || password == null) {
            console.log('wrong credentials');
            return res.status(401).json({ message: "Wrong Credentials" });
          } else {
            let payload={
                id:user.id
            }
            const token=await jwt.sign(payload,'Parth12',{expiresIn:'1h'});
            res.cookie('token',token,{
                httpOnly:true,
                maxAge:1000,
            })
            console.log('req.cookie',`${token}`);

            const session={
                doctor_id:user.id,
                sessions:token
            }
            console.log('session**************',session);
            // await db.sequelize.models.docotor_sessions.create(session);
            await db.sequelize.models.doctor_sessions.create(session)
            // console.log(session);
            return res
              .status(200)
              .send(json({ message: "doctor login successfull" }));
          }
        }
      } catch (error) {
        console.log(error);
      }
    },
    async getDoctorsPharmaStore(req,res){
      try {
      } catch (error) {
        console.log("Error in getDoctorsPharmaStore :: ",error);
      }
    }
  };
};

module.exports = doctorController;
