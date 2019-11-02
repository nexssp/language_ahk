let languageConfig = Object.assign({}, require("../config.win32"));
languageConfig.title = "Auto Hot Key";
languageConfig.description =
  "Powerful. Easy to learn. The ultimate automation scripting language for Windows.";
languageConfig.url = "https://www.autohotkey.com/";
languageConfig.extensions = [".ahk"];
languageConfig.builders = {};
languageConfig.compilers = {
  ahk: {
    install: "scoop bucket add extras && scoop install autohotkey",
    command: "autohotkey.exe",
    args: "<file>",
    help: ``
  }
};
languageConfig.errors = require("./nexss.ahk.errors");
languageConfig.languagePackageManagers = {};

module.exports = languageConfig;
