<<<<<<< HEAD
<<<<<<< HEAD
const LocalStratgy = require('passport-local').Strategy;
const db = require('../config/mysql');
const sha256 = require('sha256');
module.exports = passport => {
=======
=======
>>>>>>> a2c5e9b0ca8f52cf3a1946ce1c61532b9634f33e
var LocalStrategy = require('passport-local');
var db = require('./mysql');
var SHA256 = require('sha256');

module.exports = (passport) => {
<<<<<<< HEAD
>>>>>>> a2c5e9b0ca8f52cf3a1946ce1c61532b9634f33e
=======
>>>>>>> a2c5e9b0ca8f52cf3a1946ce1c61532b9634f33e
    passport.serializeUser(function (user, done) {
        done(null, user);
    });

    passport.deserializeUser(function (user, done) {
        done(null, user);
    });

<<<<<<< HEAD
<<<<<<< HEAD
    passport.use('local-admin-login', new LocalStratgy({
        usernameField: 'username',
        passwordField: 'password',
        passReqToCallback: true
    }, (req, username, password, done) => {
        var query = `select * from account where username = ${username}`;
        db(query).then(result => {
            if(err)
                return done(err);
            if(result.length == 0)
                return done(null, false, req.flash('loginMessage', 'Tài khoản không tồn tại!'));
            if(sha256(result[0].password).toString() === password){
                done(null, result[0]);
            }
        })
    }))

}
=======
=======
>>>>>>> a2c5e9b0ca8f52cf3a1946ce1c61532b9634f33e
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
<<<<<<< HEAD
>>>>>>> a2c5e9b0ca8f52cf3a1946ce1c61532b9634f33e
=======
>>>>>>> a2c5e9b0ca8f52cf3a1946ce1c61532b9634f33e
