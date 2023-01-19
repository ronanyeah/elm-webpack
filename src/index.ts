const { Elm } = require("./Main.elm");

const app = Elm.Main.init({
  node: document.getElementById("app"),
  flags: {},
});

app.ports.log.subscribe((txt: string) => console.log(txt));
