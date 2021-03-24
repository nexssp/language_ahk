let languageConfig = Object.assign({}, require("../config.win32"));
languageConfig.title = "Auto Hot Key";
languageConfig.description =
  "Powerful. Easy to learn. The ultimate automation scripting language for Windows.";
languageConfig.url = "https://www.autohotkey.com/";
languageConfig.founders = ["Chris Mallett", "Steve Gray"];
languageConfig.developers = ["Chris Mallett", "Steve Gray"];
languageConfig.years = ["2003"];
languageConfig.extensions = [".ahk"];
languageConfig.builders = {};
languageConfig.compilers = {
  ahk: {
    install: "scoop bucket add extras && scoop install autohotkey",
    command: "autohotkey.exe",
    args: "<file>",
    help: ``,
  },
};
languageConfig.errors = require("./nexss.ahk.errors");
languageConfig.languagePackageManagers = {
  ahk: {
    messageAfterInstallation: "", //this message will be displayed after this package manager installation, maybe some action needed etc.
    toExe: "Ahk2Exe.exe",
    help: () => {
      var url = "https://www.autohotkey.com/docs/AutoHotkey.htm";
      var start =
        process.platform == "darwin"
          ? "open"
          : process.platform == "win32"
          ? "start"
          : "xdg-open";
      require("child_process").exec(start + " " + url);
    },
    // With anly AutoHotKey.exe doesn't work (why??) so we use nexss in nexss:
    version: `nexss ${require("path").resolve("templates/version.ahk")}`,
    // debug: "AutoHotkey.exe /Debug=localhost:9000",
    init: () => {},
    // if command not found in specification
    // run directly on package manager
    else: "AutoHotKey.exe",
  },
};

module.exports = languageConfig;
