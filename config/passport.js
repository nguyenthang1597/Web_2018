var LocalStrategy = require('passport-local');
var db = require('./mysql');
var SHA256 = require('sha256');

module.exports = (passport) => {
    passport.serializeUser(function (user, done) {
        done(null, user);
    });

    passport.deserializeUser(function (user, done) {
        done(null, user);
    });

    passport.use('local-login', new LocalStrategy({passReqToCallback:true},
        (req, username, password, done) => {
            var sql = `select * from account where username = '${username}'`;
            db.load(sql).then(rows => {
                if (rows.length > 0) {
                    var p = SHA256(password).toString();
                    pass = rows[0].password.toString();
                    if (pass === p) {
                        return done(null, rows[0]);
                    }
                    else {
                        done(null,false,req.flash('error','Mật khẩu không chính xác!'))
                    }
                }
                return done(null, false,req.flash('error','Tài khoản không tồn tại!') );
            })
        }
    ))
}
