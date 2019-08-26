module.exports = {
  description: "Auto Hot Key",
  type: "language",
  author: "Marcin Polak <mapoart@gmail.com>",
  version: "1.0",
  compiler: "autohotkey.exe",
  extension: ".ahk",
  executeCommandLine: "",
  InteractiveShell: "",
  packageManager: {
    win32: "",
    darwin: "",
    linux: ""
  },
  packageManagerInstallation: {
    win32: "",
    darwin: "",
    linux: ""
  },
  packageInstallDescription: {
    all: ""
  },
  installOnError: {
    win32: "scoop install autohotkey",
    darwin: "",
    linux: ""
  },
  errors: {
    "Uncaught Error: Class '(.*?)'": {
      win32: "nexss install ahk <package>",
      darwin: "nexss install ahk <package>",
      linux: "nexss install ahk <package>"
    }
  },
  url: "https://www.autohotkey.com"
};
