const express = require('express');
const router = express.Router();

const Report = require('../Model/Report');
router.get('/catalog', (req, res) => {
    Report.countByCatalog((err, result) => {
        if(err)
            console.log(err);
        else
            res.send(result);
    })
})

router.get('/category', (req, res) => {
    Report.countByCategory((err, result) => {
        if(err)
            res.end();
        else
            res.send(result);
    })
})


module.exports = router;