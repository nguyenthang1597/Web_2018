module.exports = {
    isLoggedInUser: (req, res, next) => {
        if (req.isAuthenticated()) {
            return next();
        }
        res.redirect('/');
    },
    isLoggedInAdmin: (req, res, next) => {
        if (req.isAuthenticated()) {
            if (req.user.isAdmin)
                return next();
        }
        res.redirect('/admin');
    },
    LoggedAdmin: (req, res, next) => {
        if (!req.isAuthenticated())
            return next();
        res.redirect('/admin/dashboard');
    },
    LoggedUser: (req, res, next) => {
        if (!req.isAuthenticated())
            return next();
        res.redirect('/');
    }
}