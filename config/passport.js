var LocalStrategy = require('passport-local');
var db = require('./mysql');



module.exports = (passport) => {
    passport.serializeUser(function (user, done) {
        done(null, user);
    });

    passport.deserializeUser(function (user, done) {
        done(null, user);
    });

    passport.use('local-login',new LocalStrategy(
        (username, password, done) => {
            var sql = `select * from account where username = '${username}'`;
            console.log(sql);
            db.load(sql).then(rows => {
                if (rows.length > 0) {
                    return done(null,rows[0]);
                }
                else {
                    return done(null,false);
                }
            })
        }
    ))

}
