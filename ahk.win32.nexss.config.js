let languageConfig = Object.assign({}, require("../config.win32"));
languageConfig.title = "Auto Hot Key";
languageConfig.description =
  "Powerful. Easy to learn. The ultimate automation scripting language for Windows.";
languageConfig.url = "https://www.autohotkey.com/";
languageConfig.extensions = [".ahk"];
languageConfig.builders = {};
languageConfig.compilers = {
  ahk: {
    install: "scoop install autohotkey",
    command: "autohotkey.exe",
    args: "<file>",
    help: ``
  }
};
languageConfig.errors = require("./nexss.ahk.errors");
languageConfig.languagePackageManagers = {
  npm: {
    installation: "PowerShell.exe -File installComposer.ps1",
    messageAfterInstallation: "",
    installed: "composer installed <args>",
    search: "composer search <args>",
    install: "composer require <args>",
    uninstall: "composer remove <args>",
    help: "composer <args>",
    version: "composer version",
    init: () => {},
    // if command not found in specification
    // run directly on package manager
    else: "composer <default> <args>"
  }
};

module.exports = languageConfig;
