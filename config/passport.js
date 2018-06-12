const LocalStratgy = require('passport-local').Strategy;
const db = require('../config/mysql');
const sha256 = require('sha256');
module.exports = passport => {
    passport.serializeUser(function (user, done) {
        done(null, user);
    });

    passport.deserializeUser(function (user, done) {
        done(null, user);
    });

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