{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "twitch"; version = "0.1.2.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "jonathangfischoff@gmail.com";
      author = "Jonathan Fischoff";
      homepage = "https://github.com/jfischoff/twitch";
      url = "";
      synopsis = "A high level file watcher DSL";
      description = "Twitch is monadic DSL and library for file watching.\nIt conveniently utilizes 'do' notation in the style of\nShake and clay to expose the functionality of the\nfsnotify cross-platform file system watcher.\n\nHere is an example that converts Markdown files to Html and reloads Safari\nwhenever the input files change.\n\n@\n{-# LANGUAGE OverloadedStrings #-}\nimport Twitch\nimport Filesystem.Path.CurrentOS\n\nmain = defaultMain $ do\n\"*.md\"   |> \\\\filePath -> system $ \"pandoc -t html \" ++ encodeString filePath\n\"*.html\" |> \\\\_ -> system $ \"osascript refreshSafari.AppleScript\"\n@\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."fsnotify" or (errorHandler.buildDepError "fsnotify"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."stm-chans" or (errorHandler.buildDepError "stm-chans"))
          (hsPkgs."system-fileio" or (errorHandler.buildDepError "system-fileio"))
          ];
        buildable = true;
        };
      };
    }