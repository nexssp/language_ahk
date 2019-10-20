// additional info for templates like copy extra libraries.
// in this case library needs JSONParser.ahk so lets specify it.
const config = {
  files: ["3rdPartyLibraries/AutoHotkey-JSON/"],
  commands: ["ls -la"],
  repos: ["https://github.com/cocobelgica/AutoHotkey-JSON.git"]
};

module.exports = config;
