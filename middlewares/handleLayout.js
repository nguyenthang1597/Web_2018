var handleLayout = require('../app/Model/handleLayout');
module.exports = (req, res, next) => {
    handleLayout.loadAll().then(rows => {
    	console.log(rows);
        res.locals.layoutVM = {
            LoaiXe: rows[0],
            HangXe: rows[1]
        };
        next();
    });
};