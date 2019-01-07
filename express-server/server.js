const express = require("express");
const bodyParser = require("body-parser");
const BOOKS_DATA = require("../books");
const app = express();
const PORT = 3000;

app.use(bodyParser.json());

app.get("/books", async (req, res, next) => {
  res.send(BOOKS_DATA);
});

app.post("/books", async (req, res, next) => {
  res.send({
    success: true,
    title: req.body.title
  });
});

app.listen(PORT, () => {
  console.info(`Express server running at port ${PORT}`);
});
