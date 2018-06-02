var LocalStrategy = require('passport-local');
var db = require('./mysql');

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
                    pass = rows[0].password;
                    if (pass === password) {
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
