const jwt = require("jsonwebtoken");
const db=require("../models/index");



const guestDoctor = (req, res, next) => {
  try {
    console.log(!req.cookies?.token);
    if (!req.cookies?.token) {
      next();
    } else {
      try {
        console.log('intry');
        let decoded = jwt.verify(req.cookies.token,'Parth12');
        return res.redirect("/dashboard");
      } catch (err) {
        next();
      }
    }
  } catch (error) {
  }
};
module.exports = guestDoctor;