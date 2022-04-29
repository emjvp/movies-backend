const express = require('express');
const router = express.Router();
const movies = require('../services/movies');

/* GET all movies. */
// router.get('/', async function(req, res, next) {
//   try {
//     res.json(await movies.getAll(req.query.page));
//   } catch (err) {
//     console.error(`Error while getting movies `, err.message);
//     next(err);
//   }
// });

/* GET movies. */
router.get('/', async function(req, res, next) {
  try {
    res.json(await movies.getLatests(req.query.page));
  } catch (err) {
    console.error(`Error while getting movies `, err.message);
    next(err);
  }
});

module.exports = router;
