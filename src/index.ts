import "./index.css";

const { Elm } = require("./Main.elm");
import { ElmApp, Flags } from "./ports";

const flags: Flags = {};
const app: ElmApp = Elm.Main.init({
  node: document.getElementById("app"),
  flags,
});

app.ports.log.subscribe((txt: string) => console.log(txt));
