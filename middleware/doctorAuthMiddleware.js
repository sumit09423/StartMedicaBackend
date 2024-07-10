const jwt = require("jsonwebtoken");
const db = require("../models/index");

const doctorAuthMiddleware = async (req, res, next) => {
  // console.log('calling middleware');
  const token = req.cookies.token;
  // console.log(token);
  if (!token) {
    return res.redirect("/login");
  }

  try {
    const decoded = jwt.verify(token, "Parth12");
    const doctor = await db.sequelize.models.doctor.findByPk(
      decoded.id
    );

    if (doctor) {
      req.doctor = decoded.id;
      // console.log('``````````````````````````',req.doctor);
      console.log(token);
      const data = await db.sequelize.models.doctor_sessions.findOne({
        where: { doctor_id: req.doctor, session: token },
      });
      if (data) {
        // console.log('data',data);
        next();
      } else {
        res.clearCookie("token");
        return res.redirect("/login");
      }
    } else {
      res.clearCookie("token");
      return res.redirect("/login");
    }
  } catch {
    res.clearCookie("token");
    return res.redirect("/login");
  }
};
module.exports = doctorAuthMiddleware;
