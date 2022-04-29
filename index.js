const express = require("express");
const app = express();
const movies = require("./routes/movies");
app.use(express.json());
app.use(
  express.urlencoded({
    extended: true,
  })
);
app.get("/", (req, res) => {
  res.json({ message: "ok" });
});

// app.use("/movies", movies);
app.use("/latest-movies", movies);


/* Error handler middleware */
app.use((err, req, res, next) => {
  const statusCode = err.statusCode || 500;
  console.error(err.message, err.stack);
  res.status(statusCode).json({ message: err.message });
  return;
});
app.listen(process.env.PORT || 3000, () => {
  console.log(`Server runing...`);
});