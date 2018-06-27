const LocalStrategy = require('passport-local').Strategy;
const db = require('../config/mysql');
const sha256 = require('sha256');
module.exports = passport => {
    passport.serializeUser(function (user, done) {
        done(null, user);
    });
    passport.deserializeUser(function (user, done) {
        done(null, user);
    });
    passport.use('local-admin-login', new LocalStrategy({
        usernameField: 'username',
        passwordField: 'password',
        passReqToCallback: true
    }, (req, username, password, done) => {
        var query = `select * from account where username = '${username}'`;
        db(query).then(result => {
                if (result.length == 0)
                    return done(null, false, req.flash('loginMessage', 'Tài khoản không tồn tại!'));
                if (result[0].isAdmin == 0)
                    return done(null, false, req.flash('loginMessage', 'Tài khoản không có quyền đăng nhập vào đây!'));
                if (sha256(password).toString() == result[0].password) {
                    return done(null, result[0]);
                } else {
                    return done(null, false, req.flash('loginMessage', 'Sai mk!'));
                }
            })
            .catch(err => {
                return done(err);
            })
    }))
    passport.use('local-login', new LocalStrategy({
            usernameField: 'username',
            passwordField: 'password',
            passReqToCallback: true
        },
        (req, username, password, done) => {
            var sql = `select * from account where username = '${username}'`;
            db(sql).then(rows => {
                if (rows.length > 0) {
                    var p = sha256(password).toString();
                    pass = rows[0].password.toString();
                    if (pass === p) {
                        return done(null, rows[0]);
                    } else {
                        done(null, false, req.flash('error', 'Mật khẩu không chính xác!'))
                    }
                }
                return done(null, false, req.flash('error', 'Tài khoản không tồn tại!'));
            })
        }
    ))
}