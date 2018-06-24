var express = require("express");
var db= require('../../config/mysql');
var SHA256 = require('sha256');

var SignupControler = {
    formSignUp: (req,res,next) => {
        var vm = {
            layout : false,
            showError:req.flash('error')
        }
        res.render('user/signup',vm);
    },
    userSignUp: (req,res,next) => {
        var username = req.body.username;
        var email = req.body.email;
        var sql = `select * from account where username = '${username}'`;
        var sql2 = `select * from account where email = '${email}'`;
    
        var p1 = db(sql);
        var p2 = db(sql2);
    
        Promise.all([p1,p2]).then(([rows1,rows2]) => {
            if(rows1.length > 0) {
                req.flash('error','Tên đăng nhập đã tồn tại.');
                res.redirect('/signup');
                return;
            }
            if(rows2.length > 0) {
                req.flash('error','Email đã được sử dụng.');
                res.redirect('/signup');
                return;
            }
            var password = SHA256(req.body.password).toString();
            sql = `INSERT INTO account (username,password,isAdmin,email) VALUES ('${username}', '${password}', '0', '${email}');`
            db(sql).then(rows => {
                res.redirect('/login');
            })
        })
    }
}

module.exports = SignupControler;
