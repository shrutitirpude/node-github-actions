const express = require("express");
const app = express();
const port = 3000;

app.get("/", (req, res) => {
  res.send("Hello World! Sample Node App for GitHub Actions Small Learning Pod");
});

app.get("/health", (req, res) => {
  res.status(200);
  res.send("healthy");
});

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
});
