const db = require('./db');
const helper = require('../helper');
// const config = require('../config');

async function getAll(){
  // const offset = helper.getOffset(page, config.listPerPage);  

  // const rows = await db.query(
  //   `SELECT * FROM movies LIMIT ${offset},${config.listPerPage}`
  // );

  const rows = await db.query(
    "SELECT * FROM movies;"
  );

  const data = helper.emptyOrRows(rows);
  // const meta = {page};

  return {
    data,
    // meta
  }
}

async function getLatests(){  

  const rows = await db.query(
    "SELECT * from movies WHERE \
    WEEK(NOW(), 0) - WEEK(release_date, 0) <= 3;"
  );

  const data = helper.emptyOrRows(rows);  

  return {
    data
  }
}

module.exports = {
  getAll,
  getLatests
}