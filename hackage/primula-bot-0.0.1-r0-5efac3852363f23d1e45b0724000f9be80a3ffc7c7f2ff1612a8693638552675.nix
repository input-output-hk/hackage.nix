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
      specVersion = "1.2";
      identifier = { name = "primula-bot"; version = "0.0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "newanon@yandex.ru";
      author = "Kagami <newanon@yandex.ru>";
      homepage = "http://kagami.touhou.ru/projects/show/primula";
      url = "";
      synopsis = "Jabber-bot for primula-board ImageBoard";
      description = "Jabber-bot for communication with primula-board.\nSettings stored in ~/.primularc file.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "primula-bot" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."XMPP" or (errorHandler.buildDepError "XMPP"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."ConfigFile" or (errorHandler.buildDepError "ConfigFile"))
            ];
          buildable = true;
          };
        };
      };
    }