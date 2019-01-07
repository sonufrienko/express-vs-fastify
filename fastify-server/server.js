const Fastify = require("fastify");
const BOOKS_DATA = require("../books");
const app = Fastify();
const PORT = 3000;

app.get("/books", async (req, res, next) => {
  res.send(BOOKS_DATA);
});

app.get("/books/one", async (req, res, next) => {
  res.send(BOOKS_DATA[0]);
});

app.get("/books/none", async (req, res, next) => {
  res.send(undefined);
});

app.post("/books", async (req, res, next) => {
  res.send({
    success: true,
    title: req.body.title
  });
});

app.listen(PORT, () => {
  console.info(`Fastify server running at port ${PORT}`);
});
